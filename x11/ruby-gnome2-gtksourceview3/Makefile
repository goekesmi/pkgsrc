# $NetBSD: Makefile,v 1.39 2019/08/18 03:13:23 tsutsui Exp $
#

DISTNAME=		gtksourceview3-${VERSION}
PKGNAME=		${RUBY_PKGPREFIX}-gnome2-${DISTNAME}
COMMENT=		Ruby binding of gtksourceview3
CATEGORIES=		x11

MAINTAINER=		pkgsrc-users@NetBSD.org

DEPENDS+=		${RUBY_PKGPREFIX}-gnome2-gobject-introspection>=${VERSION}:../../devel/ruby-gnome2-gobject-introspection
DEPENDS+=		${RUBY_PKGPREFIX}-gnome2-gtk3>=${VERSION}:../../x11/ruby-gnome2-gtk3

.include "../../x11/gtksourceview3/buildlink3.mk"
.include "../../meta-pkgs/ruby-gnome2/Makefile.common"
.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
