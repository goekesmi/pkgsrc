# $NetBSD: Makefile,v 1.4 2017/10/16 12:11:56 adam Exp $

DISTNAME=	traitlets-4.3.2
PKGREVISION=	2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=t/traitlets/}

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	http://ipython.org/
COMMENT=	Traitlets Python config system
LICENSE=	modified-bsd

.include "../../lang/python/distutils.mk"

.if ${PYPKGPREFIX} == py27
DEPENDS+=	${PYPKGPREFIX}-enum34-[0-9]*:../../devel/py-enum34
.endif
DEPENDS+=	${PYPKGPREFIX}-decorator-[0-9]*:../../devel/py-decorator
DEPENDS+=	${PYPKGPREFIX}-ipython_genutils-[0-9]*:../../devel/py-ipython_genutils
DEPENDS+=	${PYPKGPREFIX}-six-[0-9]*:../../lang/py-six

USE_LANGUAGES=	# none

.include "../../mk/bsd.pkg.mk"
