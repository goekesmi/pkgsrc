# $NetBSD: Makefile,v 1.94 2019/07/21 22:25:56 wiz Exp $
#

DISTNAME=	fast-user-switch-applet-2.24.0
PKGREVISION=	67
CATEGORIES=	misc gnome
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/fast-user-switch-applet/2.24/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://jcape.name/fusa/
COMMENT=	Switch between users from the GNOME Panel

DEPENDS+=		gdm>=2.16.0:../../x11/gdm

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gmake intltool msgfmt pkg-config
USE_X11=		yes

.include "../../mk/bsd.prefs.mk"

CONFIGURE_ARGS+=	--with-gdm-setup=${LOCALBASE}/sbin/gdmsetup

.if defined(PKG_SYSCONFDIR.gdm)
CONFIGURE_ARGS+=	--with-gdm-config=${PKG_SYSCONFDIR.gdm}/custom.conf
.else
CONFIGURE_ARGS+=	--with-gdm-config=${PKG_SYSCONFDIR}/gdm/custom.conf
.endif

GCONF_SCHEMAS=		fast-user-switch-applet.schemas

BUILDLINK_API_DEPENDS.gtk2+=	gtk2+>=2.8.0

.include "../../devel/GConf/schemas.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/libbonobo/buildlink3.mk"
.include "../../devel/libglade/buildlink3.mk"
.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../textproc/gnome-doc-utils/buildlink3.mk"
.include "../../mk/omf-scrollkeeper.mk"
.include "../../x11/gnome-panel/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libXmu/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
