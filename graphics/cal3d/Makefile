# $NetBSD: Makefile,v 1.11 2019/08/30 18:33:56 nia Exp $
#

PKGNAME=		cal3d-${CAL3D_VERSION}
PKGREVISION=	3

.include "../../graphics/cal3d/Makefile.common"

COMMENT=	Skeletal based 3d character animation library in C++
LICENSE=	gnu-lgpl-v2.1

USE_TOOLS+=		automake

pre-configure:
	cd ${WRKSRC} && ./autogen.sh

.include "../../mk/bsd.pkg.mk"
