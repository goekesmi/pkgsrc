# $NetBSD: Makefile,v 1.25 2018/03/12 11:17:04 wiz Exp $
#

DISTNAME=	speedcrunch-0.10.1
PKGREVISION=	23
CATEGORIES=	math
MASTER_SITES=	http://speedcrunch.googlecode.com/files/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.speedcrunch.org/
COMMENT=	Calculator
LICENSE=	gnu-gpl-v2

WRKSRC=		${WRKDIR}/speedcrunch-0.10.1/src
USE_LANGUAGES=	c c++
USE_CMAKE=	yes

SUBST_CLASSES+=	prefix
SUBST_STAGE.prefix= pre-configure
SUBST_FILES.prefix= gui/mainwindow.cpp
SUBST_VARS.prefix= PREFIX

post-build:
	(cd ${WRKSRC} && ${QTDIR}/bin/lrelease speedcrunch.pro)

.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
