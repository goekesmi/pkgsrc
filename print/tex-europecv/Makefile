# $NetBSD: Makefile,v 1.5 2019/05/11 23:20:15 markd Exp $

DISTNAME=	europecv
PKGNAME=	tex-${DISTNAME}-2019
TEXLIVE_REV=	50470

MAINTAINER=	jaapb@kerguelen.org
HOMEPAGE=	http://ctan.org/pkg/europecv
COMMENT=	Unofficial class for European curricula vitae
LICENSE=	lppl-1.3c

DEPENDS+=	tex-ucs-[0-9]*:../../print/tex-ucs
DEPENDS+=	tex-fancyhdr-[0-9]*:../../print/tex-fancyhdr
DEPENDS+=	tex-tools-[0-9]*:../../print/tex-tools

.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"
