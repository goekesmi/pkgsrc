# $NetBSD: Makefile,v 1.5 2019/09/02 13:20:12 adam Exp $

DISTNAME=	jsonrpclib-0.1.7
PKGNAME=	${PYPKGPREFIX}-jsonrpclib-0.1.7
CATEGORIES=	textproc net devel
MASTER_SITES=	${MASTER_SITE_PYPI:=j/jsonrpclib/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://pypi.python.org/pypi/jsonrpclib
COMMENT=	Implementation of the JSON-RPC v2.0 specification
LICENSE=	apache-2.0

USE_LANGUAGES=	# none

PYTHON_VERSIONS_ACCEPTED=	 27 # as of 0.1.7

.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
