# $NetBSD: Makefile,v 1.2 2018/12/23 12:27:34 wiz Exp $

.include "../../math/z3/Makefile.common"

PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
GITHUB_PROJECT=	z3

COMMENT=	Python bindings for the Z3 theorem prover / SMT solver

CONFIGURE_ARGS+=	--python
NO_BUILD=	yes
PY_PATCHPLIST=	yes

PYTHON_VERSIONS_ACCEPTED=	27

PYZ3DIR=		${PREFIX}/${PYSITELIB}/z3
INSTALLATION_DIRS+=	${PYZ3DIR}
INSTALLATION_DIRS+=	${PYZ3DIR}/lib

do-install:
	${LN} -s ${LIBDIR}/libz3.so ${DESTDIR}${PYZ3DIR}/lib/libz3.so
	${INSTALL_DATA} ${WRKSRC}/build/python/z3/*.py ${DESTDIR}${PYZ3DIR}
	${PY_COMPILE_ALL} ${DESTDIR}${PYZ3DIR}

.include "../../lang/python/extension.mk"
.include "../../math/z3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
