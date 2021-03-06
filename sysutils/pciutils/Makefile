# $NetBSD: Makefile,v 1.42 2019/01/25 04:54:35 msaitoh Exp $

DISTNAME=	pciutils-3.6.2
PKGREVISION=	1
CATEGORIES=	sysutils
MASTER_SITES=	ftp://atrey.karlin.mff.cuni.cz/pub/linux/pci/
MASTER_SITES+=	https://www.kernel.org/pub/software/utils/pciutils/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://mj.ucw.cz/pciutils.shtml
COMMENT=	PCI bus manipulation utility similar to NetBSD pcictl(8)
LICENSE=	gnu-gpl-v2

MAKE_JOBS_SAFE=		no
ONLY_FOR_PLATFORM=	AIX-*-* Darwin-*-* FreeBSD-*-* Linux-*-* NetBSD-*-*
ONLY_FOR_PLATFORM+=	DragonFly-*-* OpenBSD-*-* SunOS-5.11-* Haiku-*-*

MAKE_FLAGS+=		CFLAGS=${CFLAGS:Q}
MAKE_FLAGS+=		LDFLAGS=${LDFLAGS:Q}

INSTALL_TARGET=		install install-lib
USE_TOOLS+=		gmake pkg-config
REPLACE_SH=		*.sh

PKGCONFIG_OVERRIDE=	lib/libpci.pc.in

OPSYSVARS+=			PCIUTILS_LIBNAME
PCIUTILS_LIBNAME.NetBSD=	pciutils
PCIUTILS_LIBNAME.*=		pci

PLIST_SUBST+=		PCIUTILS_LIBNAME=${PCIUTILS_LIBNAME}

SUBST_CLASSES=		pc
SUBST_FILES.pc=		lib/libpci.pc.in
SUBST_MESSAGE.pc=	Fixing library link specification in pkg-config file.
SUBST_STAGE.pc=		pre-configure
SUBST_VARS.pc=		PCIUTILS_LIBNAME

SUBST_CLASSES.SunOS+=	dns
SUBST_MESSAGE.dns=	Disabling DNS support on Solaris
SUBST_STAGE.dns=	pre-configure
SUBST_FILES.dns=	Makefile
SUBST_SED.dns=		-e 's/^DNS=/DNS=no/'

.include "../../mk/bsd.pkg.mk"
