# $NetBSD: Makefile,v 1.63 2019/08/11 13:25:13 wiz Exp $

PKGREVISION= 12
.include "../../meta-pkgs/xfce4/Makefile.common"

VERSION=	4.10.0
DISTNAME=	libxfcegui4-${VERSION}
PKGNAME=	libxfce4gui-${VERSION}
CATEGORIES=	x11
MASTER_SITES=	http://archive.xfce.org/src/archive/libxfcegui4/4.10/

COMMENT=	Xfce widget library

PKGCONFIG_OVERRIDE=	libxfcegui4/libxfcegui4-1.0.pc.in

HOMEPAGE=	http://archive.xfce.org/src/archive/libxfcegui4/4.10/
COMMENT=	Xfce widget library

.include "../../devel/libglade/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../x11/libxfce4util/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
