# $NetBSD: Makefile,v 1.19 2019/08/17 11:05:48 adam Exp $

DISTNAME=	uvloop-0.13.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=u/uvloop/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/MagicStack/uvloop
COMMENT=	Fast implementation of asyncio event loop on top of libuv
LICENSE=	mit AND apache-2.0

DEPENDS+=	libuv>=1.31.0:../../devel/libuv
TEST_DEPENDS+=	${PYPKGPREFIX}-OpenSSL-[0-9]*:../../security/py-OpenSSL
TEST_DEPENDS+=	${PYPKGPREFIX}-psutil-[0-9]*:../../sysutils/py-psutil

PYSETUPBUILDTARGET=	build_ext
PYSETUPBUILDARGS=	--use-system-libuv

PYTHON_VERSIONS_INCOMPATIBLE=	27

.include "../../devel/libuv/buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
