# $NetBSD: Makefile,v 1.7 2019/09/02 13:19:55 adam Exp $
#

DISTNAME=	urllib2_kerberos-0.1.6
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/_/-/}
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_PYPI:=u/urllib2_kerberos/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://bitbucket.org/tolsen/urllib2_kerberos
COMMENT=	Kerberos over HTTP Negotiate/SPNEGO support for urllib2
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-kerberos>=1.1:../../security/py-kerberos

PYTHON_VERSIONS_ACCEPTED=	 27

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
