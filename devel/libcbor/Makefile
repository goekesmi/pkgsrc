# $NetBSD: Makefile,v 1.1 2019/08/23 17:14:45 agc Exp $

DISTNAME=       libcbor
PKGNAME=        libcbor-${VERSION}
VERSION=        0.5.0
CATEGORIES=     devel
MASTER_SITES=   ${MASTER_SITE_GITHUB:=PJK/}
GITHUB_TAG=     v${VERSION}

MAINTAINER=     pkgsrc-users@pkgsrc.org
HOMEPAGE=       https://github.com/PJK/libcbor
COMMENT=        Parsing and generate schema-less binary data format
LICENSE=        mit

USE_LANGUAGES+= c c++
USE_CMAKE=	yes
USE_TOOLS+=	pkg-config

.include "../../mk/bsd.pkg.mk"
