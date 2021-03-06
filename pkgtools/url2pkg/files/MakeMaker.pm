# -*-perl-*-

# Copyright (c) 2010 The NetBSD Foundation, Inc.
# All rights reserved.
#
# This code is derived from software contributed to The NetBSD Foundation
# by Roland Illig.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE NETBSD FOUNDATION, INC. AND CONTRIBUTORS
# ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
# TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE FOUNDATION OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

# This is a drop-in replacement for the MakeMaker Perl module. Instead
# of generating a Makefile, it extracts the dependency information for
# other Perl modules. It is used to simplify the generation of pkgsrc
# packages for Perl modules.

package ExtUtils::MakeMaker;

require 5.013002;

use strict;
use warnings;

use constant conf_pkgsrcdir	=> '@PKGSRCDIR@';

BEGIN {
	use Exporter;
	use vars qw(@ISA @EXPORT);
	@ISA = qw(Exporter);
}

# From lib/perl5/5.18.0/ExtUtils/MakeMaker.pm
our $VERSION = '6.66';

our $Verbose	= 0;	# exported
our @EXPORT	= qw(&WriteMakefile &prompt $Verbose $version);
our @EXPORT_OK	= qw(&neatvalue &_sprintf562);

# Finds and returns the category a given package lies in.
# If the package does not exist, C<undef> is returned.
# If the package exists more than once, it is unspecified which
# of the categories is returned.
sub find_category($) {
	my ($pkg) = @_;
	my ($retval, $pkgsrcdir);

	opendir(D, conf_pkgsrcdir) or die;
	foreach my $cat (readdir(D)) {
		next if ($cat =~ qr"^\.");

		if (-f (conf_pkgsrcdir."/${cat}/${pkg}/Makefile")) {
			$retval = $cat;
		}
	}
	closedir(D) or die;
	return $retval;
}

sub writeDependency($$) {
	my ($dep, $ver) = @_;

	my $pkgbase = "p5-" . ($dep =~ s/::/-/gr);
	my $category = find_category($pkgbase);

	if (defined($category)) {
		printf("DEPENDS\t%s>=%s:../../%s/%s\n", $pkgbase, $ver, $category, $pkgbase);
		return;
	}

	# If the package does not exist but the Perl module can be
	# loaded, assume that no extra dependency is needed.
	return if eval("use $dep $ver; 1;");

	die("$0: ERROR: No pkgsrc package found for dependency ${dep}>=${ver}.\n$@\n");
}

sub WriteMakefile(%) {
	my (%options) = @_;

	if (exists($options{"PREREQ_PM"})) {
		my $deps = $options{"PREREQ_PM"};
		foreach my $dep (sort(keys(%{$deps}))) {
			writeDependency($dep, $deps->{$dep});
		}
	}
}

sub prompt(@) {
	my ($message, $default) = @_;

	return $default || "";
}

sub neatvalue {
	return;
}

sub _sprintf562 {
	return sprintf(@_);
}

1;
