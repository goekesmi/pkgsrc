# $NetBSD: Makefile,v 1.10 2019/08/22 12:23:08 ryoon Exp $

.include "Makefile.common"

PKGNAME=	etlegacy-${ETL_VERSION}
PKGREVISION=	8

COMMENT=	Open source Wolfenstein: Enemy Territory client and server

CMAKE_ARGS+=	-DRENDERER_DYNAMIC=OFF
CMAKE_ARGS+=	-DFEATURE_RENDERER2=OFF # experimental, buggy

PLIST_VARS+=	client
PLIST.client=	yes

.include "options.mk"
.include "../../audio/openal-soft/buildlink3.mk"
.include "../../graphics/glew/buildlink3.mk"
.include "../../graphics/glu/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../devel/SDL2/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libICE/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
