# $NetBSD: Makefile,v 1.26 2019/04/25 07:33:15 maya Exp $

DISTNAME=	flawfinder-1.31
PKGREVISION=	1
CATEGORIES=	security devel
MASTER_SITES=	https://www.dwheeler.com/flawfinder/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.dwheeler.com/flawfinder/
COMMENT=	Python program to find flaws in C/C++ programs
LICENSE=	gnu-gpl-v2

NO_BUILD=		yes
REPLACE_PYTHON=	flawfinder
INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/flawfinder ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/flawfinder.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
