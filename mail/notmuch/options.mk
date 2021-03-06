# $NetBSD: options.mk,v 1.6 2020/09/06 03:11:31 ryoon Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.notmuch
PKG_SUPPORTED_OPTIONS=	notmuch-emacs doc
PKG_SUGGESTED_OPTIONS+=	doc

.include "../../mk/bsd.options.mk"

###
### emacs support
###
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
PLIST_VARS+=		emacs
.if !empty(PKG_OPTIONS:Mnotmuch-emacs)
DEPENDS+=		emacs>=25.1:../../editors/emacs
PLIST.emacs=		yes
.else
CONFIGURE_ARGS+=	--without-emacs
.endif

###
### documentation support
###
PLIST_VARS+=		doc
.if !empty(PKG_OPTIONS:Mdoc)
PLIST.doc=		yes
PYTHON_VERSIONED_DEPENDENCIES=	sphinx:build
.include "../../lang/python/versioned_dependencies.mk"
.else
CONFIGURE_ARGS+=	--without-docs
CONFIGURE_ARGS+=	--without-api-docs
.endif
