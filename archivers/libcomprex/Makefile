# $NetBSD: Makefile,v 1.43 2019/08/22 12:22:48 ryoon Exp $

DISTNAME=	libcomprex-0.3.3
PKGREVISION=	20
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gnupdate/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gnupdate.sourceforge.net/components/libcomprex/index.xml
COMMENT=	Library to handle (de)compression of files

USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config
USE_PKGLOCALEDIR=	yes
PKGCONFIG_OVERRIDE=	libcomprex.pc.in
GNU_CONFIGURE=		yes
BROKEN_GETTEXT_DETECTION=	yes
CONFIGURE_ENV+=		ac_cv_lib_curl_curl_formparse=yes
REPLACE_SH=		comprex-config.in

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
