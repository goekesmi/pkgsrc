# $NetBSD: Makefile,v 1.9 2019/07/10 10:32:56 nia Exp $

GFXVER=		0.5.5
PKGNAME=	openttd-data-${GFXVER}
CATEGORIES=	games x11
MASTER_SITES=	https://binaries.openttd.org/extra
DISTFILES=	opengfx-${GFXVER}-all.zip
DISTFILES+=	openmsx-0.3.1-all.zip
DISTFILES+=	opensfx-0.2.3-all.zip

SITES.opengfx-${GFXVER}-all.zip=	${MASTER_SITES:Q}/opengfx/${GFXVER}/
SITES.openmsx-0.3.1-all.zip=		${MASTER_SITES:Q}/openmsx/0.3.1/
SITES.opensfx-0.2.3-all.zip=		${MASTER_SITES:Q}/opensfx/0.2.3/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.openttd.org/
COMMENT=	Free data files for OpenTTD
LICENSE=	gnu-gpl-v2

NO_BUILD=	yes
NO_CONFIGURE=	yes

INSTALLATION_DIRS=	share/openttd/data
INSTALLATION_DIRS+=	share/openttd/gm

USE_TOOLS+=	tar

post-extract:
	cd ${WRKDIR} && tar xvf opengfx-${GFXVER}.tar

do-install:
	${INSTALL_DATA} ${WRKDIR}/opengfx-${GFXVER}/*.grf \
		${DESTDIR}${PREFIX}/share/openttd/data
	${INSTALL_DATA} ${WRKDIR}/opengfx-${GFXVER}/*.obg \
		${DESTDIR}${PREFIX}/share/openttd/data
	${INSTALL_DATA} ${WRKDIR}/openmsx-0.3.1/*.mid \
		${DESTDIR}${PREFIX}/share/openttd/gm
	${INSTALL_DATA} ${WRKDIR}/openmsx-0.3.1/*.obm \
		${DESTDIR}${PREFIX}/share/openttd/gm
	${INSTALL_DATA} ${WRKDIR}/opensfx-0.2.3/*.cat \
		${DESTDIR}${PREFIX}/share/openttd/data
	${INSTALL_DATA} ${WRKDIR}/opensfx-0.2.3/*.obs \
		${DESTDIR}${PREFIX}/share/openttd/data

.include "../../mk/bsd.pkg.mk"
