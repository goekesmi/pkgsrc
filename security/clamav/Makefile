# $NetBSD: Makefile,v 1.53 2019/09/06 09:22:49 jperkin Exp $

PKGREVISION= 1
.include "Makefile.common"

COMMENT=	Anti-virus toolkit

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		gsed
GNU_CONFIGURE=		yes
SET_LIBDIR=		yes
FAKE_NCURSES=		yes
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
CONFIGURE_ARGS+=	--with-dbdir=${CLAMAV_DBDIR}
CONFIGURE_ARGS+=	--with-group=${CLAMAV_GROUP}
CONFIGURE_ARGS+=	--with-user=${CLAMAV_USER}
CONFIGURE_ARGS+=	--with-libcurl=${BUILDLINK_PREFIX.curl}
CONFIGURE_ARGS+=	--with-libjson=${BUILDLINK_PREFIX.json-c}
CONFIGURE_ARGS+=	--with-ltdl-include=${BUILDLINK_PREFIX.libltdl}/include
CONFIGURE_ARGS+=	--with-ltdl-lib=${BUILDLINK_PREFIX.libltdl}/lib
CONFIGURE_ARGS+=	--with-openssl=${BUILDLINK_PREFIX.openssl}
CONFIGURE_ARGS+=	--with-pcre=${BUILDLINK_PREFIX.pcre2}
CONFIGURE_ARGS+=	--with-system-libmspack=${BUILDLINK_PREFIX.libmspack}
CONFIGURE_ARGS+=	--with-xml=${BUILDLINK_PREFIX.libxml2}
CONFIGURE_ARGS+=	--with-zlib=${BUILDLINK_PREFIX.zlib}
CONFIGURE_ARGS+=	--enable-readdir_r
# pkgsrc enforces a "secure" version of zlib, so don't let this check
# bomb the build
CONFIGURE_ARGS+=	--disable-zlib-vcheck
# Work around build failure PR pkg/54420
CONFIGURE_ARGS+=	--disable-unrar

CONFIGURE_ENV.SunOS+=	ac_cv_ld_version_script=no

CHECK_PORTABILITY_SKIP=	contrib/* unit_tests/* win32/*

.include "../../mk/compiler.mk"

NOT_PAX_MPROTECT_SAFE+=	sbin/clamd
NOT_PAX_MPROTECT_SAFE+=	bin/clamscan
NOT_PAX_MPROTECT_SAFE+=	bin/freshclam

CFLAGS.SunOS+=		-D__EXTENSIONS__
.if !empty(PKGSRC_COMPILER:Mclang) || !empty(CC_VERSION:Mgcc-[6-9]*)
CFLAGS.SunOS+=		-D_XOPEN_SOURCE=600
.endif

BUILD_DEFS+=	CLAMAV_USER CLAMAV_GROUP CLAMAV_DBDIR
FILES_SUBST+=	CLAMAV_USER=${CLAMAV_USER}
FILES_SUBST+=	CLAMAV_GROUP=${CLAMAV_GROUP}
FILES_SUBST+=	CLAMAV_DBDIR=${CLAMAV_DBDIR}
MESSAGE_SUBST+=	CLAMAV_USER=${CLAMAV_USER}

RCD_SCRIPTS=	clamd freshclamd
SMF_METHODS=	${RCD_SCRIPTS}
SMF_INSTANCES=	${SMF_METHODS}

PKG_GROUPS+=	${CLAMAV_GROUP}
PKG_USERS+=	${CLAMAV_USER}:${CLAMAV_GROUP}

PKG_GROUPS_VARS+=	CLAMAV_GROUP
PKG_USERS_VARS=		CLAMAV_USER

EGDIR=		${PREFIX}/share/examples/clamav

CONF_SAMPLES=		clamd.conf freshclam.conf
OWN_DIRS_PERMS=		${CLAMAV_DBDIR} ${CLAMAV_USER} ${CLAMAV_GROUP} 0775
CONF_FILES=		# empty
CONF_FILES_PERMS=	# empty
.for i in ${CONF_SAMPLES}
CONF_FILES+=		${EGDIR}/${i} ${PKG_SYSCONFDIR}/${i}
.endfor

INSTALLATION_DIRS+=	${EGDIR}

.include "options.mk"

post-install:
.for i in ${CONF_SAMPLES}
	${MV} ${DESTDIR}${PREFIX}/etc/${i}.sample ${DESTDIR}${EGDIR}/${i}
.endfor

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../archivers/libmspack/buildlink3.mk"
.include "../../devel/libltdl/buildlink3.mk"
.include "../../devel/pcre2/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../devel/gmp/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../textproc/json-c/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/curses.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
