# $NetBSD: Makefile,v 1.15 2019/08/11 13:23:44 wiz Exp $

DISTNAME=       Text-Emoticon-0.04
PKGNAME=        p5-${DISTNAME}
PKGREVISION=	11
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/M/MI/MIYAGAWA/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/Text-Emoticon
COMMENT=	Emoticon filter class

DEPENDS+=	p5-UNIVERSAL-require-[0-9]*:../../devel/p5-UNIVERSAL-require

PERL5_PACKLIST=		auto/Text/Emoticon/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
