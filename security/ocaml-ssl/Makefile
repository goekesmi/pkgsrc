# $NetBSD: Makefile,v 1.35 2019/08/24 11:09:39 jaapb Exp $
#

DISTNAME=	ocaml-ssl-0.5.9
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_GITHUB:=savonet/}

MAINTAINER=	jaapb@NetBSD.org
HOMEPAGE=	https://github.com/savonet/ocaml-ssl
COMMENT=	SSL library for OCaml
LICENSE=	gnu-lgpl-v2.1

OCAML_USE_FINDLIB=	yes
OCAML_USE_DUNE=	yes

.include "../../mk/bsd.prefs.mk"

.include "../../mk/ocaml.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
