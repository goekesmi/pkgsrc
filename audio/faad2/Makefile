# $NetBSD: Makefile,v 1.53 2019/07/11 09:03:35 nia Exp $
# IMPORTANT: Do not forget to update audio/xmms-faad

DISTNAME=	faad2-2.8.8
PKGREVISION=	1
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=faac/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.audiocoding.com/
COMMENT=	AAC decoding library
LICENSE=	gnu-gpl-v2

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		autoconf automake autoreconf gmake
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--includedir=${PREFIX}/include/faad2

# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=52624
GCC_REQD+=		4.8

LIBS+=			-lm
CPPFLAGS.SunOS+=	-D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE=1

SUBST_CLASSES+=		pkgver
SUBST_STAGE.pkgver=	pre-configure
SUBST_MESSAGE.pkgver=	Setting PACKAGE_VERSION in neaacdec.h
SUBST_FILES.pkgver=	include/neaacdec.h
SUBST_SED.pkgver=	-e 's,PACKAGE_VERSION,"${PKGVERSION_NOREV}",'

post-extract:
	${MV} ${WRKSRC}/frontend/faad.man ${WRKSRC}/frontend/faad.1

pre-configure:
	cd ${WRKSRC} && autoreconf -if

.include "../../mk/bsd.pkg.mk"
