# $NetBSD: Makefile,v 1.15 2019/07/09 20:31:33 nia Exp $

DISTNAME=	libsass-3.6.1
PKGREVISION=	1
CATEGORIES=	www devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=sass/}

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://sass-lang.com/libsass/
COMMENT=	C/C++ port of the Sass CSS precompiler
LICENSE=	mit

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		aclocal autoheader autoconf automake gmake
GNU_CONFIGURE=		yes
MAKE_FILE=		GNUmakefile

PKGCONFIG_OVERRIDE=	src/support/libsass.pc.in

pre-configure:
	${RUN} cd ${WRKSRC}; libtoolize -c -f; \
	aclocal; autoheader; automake -a --foreign -i; autoconf

.include "../../mk/bsd.pkg.mk"
