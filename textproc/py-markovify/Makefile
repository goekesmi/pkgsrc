# $NetBSD: Makefile,v 1.2 2019/08/27 05:32:06 adam Exp $

DISTNAME=	markovify-0.7.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	textproc python
MASTER_SITES=	${MASTER_SITE_PYPI:=m/markovify/}

MAINTAINER=	ng0@NetBSD.org
HOMEPAGE=	http://github.com/jsvine/markovify
COMMENT=	Simple and extensible Markov chain generator
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-Unidecode-[0-9]*:../../textproc/py-Unidecode

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
