# $NetBSD: Makefile,v 1.53 2019/09/02 13:19:52 adam Exp $

DISTNAME=	nicotine-1.0.8
PKGREVISION=	17
CATEGORIES=	net audio x11
#MASTER_SITES=	http://nicotine.thegraveyard.org/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=	http://nicotine.thegraveyard.org/
COMMENT=	Client for soulseek, a peer-to-peer network for music
LICENSE=	gnu-gpl-v2

DEPENDS+=	${PYPKGPREFIX}-gtk2>=1.99.16:../../x11/py-gtk2

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		# empty
PYTHON_VERSIONS_ACCEPTED=	 27 # py-gtk2

MAKE_ENV+=	PKGLOCALEDIR=${PKGLOCALEDIR:Q}

.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
