# $NetBSD: Makefile,v 1.38 2019/09/02 13:19:48 adam Exp $

.include "../../net/bittornado/Makefile.common"

PKGNAME=	${DISTNAME:S/Tornado/Tornado-gui/}
PKGREVISION=	12

COMMENT+=	(wxGTK GUI)

CONFLICTS=	bittorrent-gui-[0-9]*

DEPENDS+=	BitTornado>=0.3.18:../../net/bittornado
DEPENDS+=	${PYPKGPREFIX}-wxWidgets-[0-9]*:../../x11/py-wxWidgets

NO_BUILD=	yes

REPLACE_PYTHON=	btcompletedirgui.py btdownloadgui.py
REPLACE_PYTHON+=	btmaketorrentgui.py
PYTHON_VERSIONS_ACCEPTED=	 27 # py-wxWidgets

INSTALLATION_DIRS=	bin

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/btcompletedirgui.py ${DESTDIR}${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/btdownloadgui.py ${DESTDIR}${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/btmaketorrentgui.py ${DESTDIR}${PREFIX}/bin

.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
