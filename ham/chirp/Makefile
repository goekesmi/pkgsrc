# $NetBSD: Makefile,v 1.16 2019/07/21 22:25:07 wiz Exp $

DISTNAME=	chirp-0.4.1
PKGREVISION=	10
CATEGORIES=	ham
MASTER_SITES=	https://chirp.danplanet.com/download/${PKGVERSION}/

MAINTAINER=	dbj@NetBSD.org
HOMEPAGE=	https://chirp.danplanet.com/projects/chirp/wiki/Home
COMMENT=	Tool for programming Amateur Radio HTs
LICENSE=	gnu-gpl-v3

USE_LANGUAGES=	#none
REPLACE_PYTHON= *.py chirp/*.py chirpui/*.py

DEPENDS+=       ${PYPKGPREFIX}-serial>=2.7:../../comms/py-serial

PYTHON_VERSIONS_ACCEPTED=	27 # py-gtk2

.include "../../mk/bsd.prefs.mk"

SUBST_CLASSES+=			fix-manpaths
SUBST_STAGE.fix-manpaths=	pre-configure
SUBST_MESSAGE.fix-manpaths=	Fixing man paths
SUBST_FILES.fix-manpaths=	setup.py
SUBST_SED.fix-manpaths=		-e 's,share/man/man1,${PKGMANDIR}/man1,g'

SUBST_CLASSES+=			fix-sharepaths
SUBST_STAGE.fix-sharepaths=	pre-configure
SUBST_MESSAGE.fix-sharepaths=	Fixing /usr/share paths
SUBST_FILES.fix-sharepaths=	chirpw
SUBST_FILES.fix-sharepaths+=	chirp/generic_xml.py
SUBST_FILES.fix-sharepaths+=	chirpui/mainapp.py
SUBST_SED.fix-sharepaths=	-e 's,/usr/share,${PREFIX}/share,g'

.include "../../sysutils/desktop-file-utils/desktopdb.mk"

.include "../../lang/python/distutils.mk"
.include "../../lang/python/application.mk"
.include "../../textproc/py-libxml2/buildlink3.mk"
.include "../../x11/py-gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
