# $NetBSD: Makefile,v 1.6 2019/08/11 13:22:28 wiz Exp $

DISTNAME=	XMLRPC-Lite-0.717
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	net perl5
MASTER_SITES=	https://cpan.metacpan.org/authors/id/P/PH/PHRED/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://cpan.metacpan.org/authors/id/P/PH/PHRED/
COMMENT=	Client and server implementation of XML-RPC protocol
LICENSE=        ${PERL5_LICENSE}

# for make test
BUILD_DEPENDS+=	p5-SOAP-Lite-[0-9]*:../../net/p5-SOAP-Lite

PERL5_PACKLIST= auto/XMLRPC-Lite/.packlist
USE_LANGUAGES=  # none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
