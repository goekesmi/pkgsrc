# $NetBSD: Makefile,v 1.8 2019/08/18 04:19:58 maya Exp $

DISTNAME=	yarn-v1.17.3
PKGNAME=	${DISTNAME:S/-v/-/}
CATEGORIES=	devel
MASTER_SITES=	https://yarnpkg.com/downloads/${PKGVERSION_NOREV}/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://yarnpkg.com/
COMMENT=	JavaScript package manager
LICENSE=	2-clause-bsd

DEPENDS+=	nodejs-[0-9]*:../../lang/nodejs

USE_LANGUAGES=	# none

INSTALLATION_DIRS=	bin libexec/yarn/bin libexec/yarn/lib

REPLACE_NODEJS=	bin/yarn.js

do-build:
	${SED} ${FILES_SUBST_SED} ${FILESDIR}/yarn.sh >${WRKSRC}/yarn.sh

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/bin/yarn.js			\
	    ${DESTDIR}${PREFIX}/libexec/yarn/bin/yarn.js
	${INSTALL_DATA} ${WRKSRC}/lib/*.js			\
	    ${DESTDIR}${PREFIX}/libexec/yarn/lib/
	${INSTALL_SCRIPT} ${WRKSRC}/yarn.sh			\
	    ${DESTDIR}${PREFIX}/bin/yarn
	${INSTALL_SCRIPT} ${WRKSRC}/yarn.sh			\
	    ${DESTDIR}${PREFIX}/bin/yarnpkg

.include "../../lang/nodejs/application.mk"
.include "../../mk/bsd.pkg.mk"
