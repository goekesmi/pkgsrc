# $NetBSD: Makefile,v 1.35 2019/07/21 22:23:58 wiz Exp $

DISTNAME=	Phone-0.5.1
PKGNAME=	deforaos-phone-0.5.1
PKGREVISION=	5
CATEGORIES=	comms net
MASTER_SITES=	https://www.defora.org/os/download/download/4455/

MAINTAINER=	khorben@defora.org
HOMEPAGE=	https://www.defora.org/
COMMENT=	DeforaOS desktop telephony

LICENSE=	gnu-gpl-v3

USE_TOOLS+=	pkg-config
USE_TOOLS+=	xgettext

BUILD_DEPENDS+=	libxslt-[0-9]*:../../textproc/libxslt
BUILD_DEPENDS+=	docbook-xsl-[0-9]*:../../textproc/docbook-xsl

MAKE_FLAGS+=	DESTDIR=${DESTDIR}
MAKE_FLAGS+=	PREFIX=${PREFIX}
MAKE_FLAGS+=	CFLAGS=${CFLAGS:Q}
MAKE_FLAGS+=	LDFLAGS=${LDFLAGS:Q}
AUTO_MKDIRS=	yes

.include "../../mk/bsd.prefs.mk"

.if ${PKGMANDIR} != "share/man"
post-install:
	${MV} ${DESTDIR}${PREFIX}/share/man/html1/gprs.html ${DESTDIR}${PREFIX}/${PKGMANDIR}/html1/gprs.html
	${MV} ${DESTDIR}${PREFIX}/share/man/html1/phone.html ${DESTDIR}${PREFIX}/${PKGMANDIR}/html1/phone.html
	${MV} ${DESTDIR}${PREFIX}/share/man/html1/phonectl.html ${DESTDIR}${PREFIX}/${PKGMANDIR}/html1/phonectl.html
	${MV} ${DESTDIR}${PREFIX}/share/man/man1/gprs.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/gprs.1
	${MV} ${DESTDIR}${PREFIX}/share/man/man1/phone.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/phone.1
	${MV} ${DESTDIR}${PREFIX}/share/man/man1/phonectl.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/phonectl.1
	${RMDIR} ${DESTDIR}${PREFIX}/share/man/html1
	${RMDIR} ${DESTDIR}${PREFIX}/share/man/man1
	${RMDIR} ${DESTDIR}${PREFIX}/share/man
.endif

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../x11/deforaos-libdesktop/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
