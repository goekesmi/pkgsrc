# $NetBSD: Makefile,v 1.14 2019/04/25 07:32:34 maya Exp $
#

DISTNAME=		amaroc-0.3
PKGREVISION=		6
CATEGORIES=		audio
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=amaroc/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://sourceforge.net/projects/amaroc/
COMMENT=		Command line interface to Amarok
LICENSE=		gnu-gpl-v2

DEPENDS+=		${PYPKGPREFIX}-curses-[0-9]*:../../devel/py-curses

INSTALLATION_DIRS=	bin share/doc/amaroc
REPLACE_PYTHON=	amaroc.py

NO_BUILD=		yes

USE_LANGUAGES=		# none

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/amaroc.py ${DESTDIR}${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/doc/amaroc
	${INSTALL_DATA} ${WRKSRC}/README ${DESTDIR}${PREFIX}/share/doc/amaroc

.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
