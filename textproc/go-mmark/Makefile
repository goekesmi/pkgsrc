# $NetBSD: Makefile,v 1.13 2019/08/14 15:45:48 bsiegert Exp $

DISTNAME=	mmark-1.3.6
PKGNAME=	go-${DISTNAME}
PKGREVISION=	11
MASTER_SITES=	${MASTER_SITE_GITHUB:=miekg/}
CATEGORIES=	textproc
GITHUB_TAG=	v${PKGVERSION_NOREV}
GITHUB_PROJECT= ${PKGBASE:S/^go-//}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/miekg/mmark
COMMENT=	Mmark: a powerful markdown processor in Go geared towards the IETF
LICENSE=	2-clause-bsd

GO_DIST_BASE=	${DISTNAME}
GO_SRCPATH=	github.com/miekg/mmark

.include "../../www/go-toml-burntsushi/buildlink3.mk"
.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
