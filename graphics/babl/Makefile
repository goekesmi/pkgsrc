# $NetBSD: Makefile,v 1.25 2019/06/18 14:24:02 ryoon Exp $

DISTNAME=	babl-0.1.66
CATEGORIES=	graphics
MASTER_SITES=	http://download.gimp.org/pub/babl/0.1/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gegl.org/babl/
COMMENT=	Dynamic pixel conversion library
LICENSE=	gnu-gpl-v3

WRKSRC=		${WRKDIR}/${PKGNAME_NOREV}

# NOTE: to build documentation (which requires additional dependencies)
#	define BUILD_DOCS in MAKE_ENV.

USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config gmake
GNU_CONFIGURE=		yes
PKGCONFIG_OVERRIDE+=	babl.pc.in

# XXX Clang does not handle assembler, yet
#.include "../../mk/compiler.mk"
#.if !empty(PKGSRC_COMPILER:Mclang)
#CONFIGURE_ARGS+=	--disable-sse
#.endif

.include "../../graphics/lcms2/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
