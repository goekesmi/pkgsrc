# $NetBSD: Makefile,v 1.29 2019/08/23 15:21:59 nia Exp $

DISTNAME=	meson-0.51.1
PKGREVISION=	4
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=m/meson/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://mesonbuild.com/
COMMENT=	Open source build system meant to be fast and user friendly
LICENSE=	apache-2.0

DEPENDS+=	ninja-build-[0-9]*:../../devel/ninja-build

PYTHON_VERSIONS_INCOMPATIBLE=	27

USE_LANGUAGES=	c c++ # c++ for tests

SUBST_CLASSES+=		man
SUBST_SED.man+=		-e "s,share/man,${PKGMANDIR},"
SUBST_FILES.man+=	setup.py
SUBST_STAGE.man=	pre-configure
SUBST_MESSAGE.man=	Fixing man page installation path.

REPLACE_PYTHON+=	ghwt.py
REPLACE_PYTHON+=	meson.py
REPLACE_PYTHON+=	mesonbuild/rewriter.py
REPLACE_PYTHON+=	run_*.py
REPLACE_PYTHON+=	test\ cases/*/*/*.py
REPLACE_PYTHON+=	test\ cases/*/*/*/*.py
REPLACE_PYTHON+=	test\ cases/*/*/*/*/*.py
REPLACE_PYTHON+=	test\ cases/common/14\ configure\ file/test.py.in
REPLACE_PYTHON+=	test\ cases/common/188\ find\ override/subdir/gencodegen.py.in
REPLACE_PYTHON+=	test\ cases/common/55\ run\ target/configure.in
REPLACE_PYTHON+=	test\ cases/windows/8\ find\ program/test-script
REPLACE_PYTHON+=	tools/*.py

do-test:
	cd ${WRKSRC} && ${PYTHONBIN} run_tests.py

.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
