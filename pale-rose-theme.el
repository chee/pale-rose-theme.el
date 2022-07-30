;; pale-rose-theme

;; it looks like this:

;; [[file:images/screenshot_20200820_193250.png]]


;; [[file:../../notebook/config/emacs/themes/pale-rose.org::*pale-rose-theme][pale-rose-theme:1]]
;;; pale-rose-theme.el --- chee's third light emacs 24+ theme.
;;; commentary:
;; version 1
;; keywords: deftheme theme
;; author: chee <yay@chee.party>
;; url: github.com/chee/notebook
;; this isn't part of gnu Emacs
;; license: public domain / cc0
;; https://creativecommons.org/publicdomain/zero/1.0/legalcode
;;; code:
;; pale-rose-theme:1 ends here

;; [[file:../../notebook/config/emacs/themes/pale-rose.org::*pale-rose-theme][pale-rose-theme:2]]
(deftheme pale-rose "chee -- i love you and colours")
(defvar pale-rose:colors
       '(("roseb"      . "#ffe9ed")
	      ("rosef"      . "#cc1336")
	      ("background" . "#ffffff")
	      ("foreground" . "#000000")
	      ("stringf"    . "#000000")
	      ("stringb"    . "#ffe9ed")
	      ("cursorb"    . "#ff2a50")
	      ("cursorf"    . "#ffffff")
	      ("regionb"    . "#ffee88")
	      ("regionf"    . "#333333")
	      ("blue"       . "#407acd")
	      ("subtle"     . "#8899aa")
	      ("subtle2"    . "#334455")
	      ("uhoh"       . "#fa2573")
	      ("wishy"      . "#22a6cd")
	      ("function"   . "#09c598")
	      ("type"       . "#cd1669")
	      ("variable"   . "#7737cf")
	      ("myeyes"     . "#3388ff")
	      ("brush"      . "#2ec2ff")
	      ("lone"       . "#37e4ba")
	      ("sky"        . "#ff408b"))
       "Colours for pale-rose-theme!")
;; thanks to bbatsov for this macro
(defmacro pale-rose:with-colors (&rest body)
       "Let's bind our BODY colors!"
       (declare (indent 0))
       `(let ((class '((class color) (min-colors 89)))
			,@(mapcar (lambda (cons)
							(list (intern (car cons)) (cdr cons)))
						      pale-rose:colors))
	       ,@body))
;; pale-rose-theme:2 ends here

;; begin

;; [[file:../../notebook/config/emacs/themes/pale-rose.org::*begin][begin:1]]
(pale-rose:with-colors
       (custom-theme-set-faces
	'pale-rose
;; begin:1 ends here

;; text editing


;; [[file:../../notebook/config/emacs/themes/pale-rose.org::*text editing][text editing:1]]
`(default
	       ((t (:foreground ,foreground
							      :background ,background))))
`(cursor
       ((t (:foreground ,cursorf :background ,cursorb))))

`(font-lock-builtin-face
       ((t (:foreground ,blue))))

`(font-lock-comment-delimiter-face
       ((t (:foreground ,subtle2 ))))

`(font-lock-comment-face
       ((t (:foreground
		      ,subtle
		      :slant       italic))))

`(font-lock-constant-face
       ((t (:foreground ,wishy))))

`(font-lock-doc-face
       ((t (:foreground ,wishy
						      :slant       italic))))

`(font-lock-function-name-face
       ((t (:foreground ,function))))

`(font-lock-keyword-face
       ((t (:foreground ,myeyes))))

`(font-lock-negation-char-face
       ((t (:foreground ,uhoh))))

`(font-lock-preprocessor-face
       ((t (:foreground ,sky))))

`(font-lock-string-face
       ((t (:foreground ,stringf
						      :background ,stringb))))

`(font-lock-type-face
       ((t (:foreground ,type))))

`(font-lock-variable-name-face
       ((t (:foreground ,variable))))

`(font-lock-warning-face
       ((t (:foreground ,uhoh))))

`(fringe
       ((t (:background ,background))))

`(show-paren-match
       ((t (:background ,foreground
						      :foreground ,background))))

'(show-paren-mismatch
       ((t (:background "#FA2573"))))

`(minibuffer-prompt
       ((t (:foreground ,rosef))))

`(highlight
       ((t (:background "#c7e7ff"))))

`(hl-line
       ((t (:background "#e7f7fc"))))

`(linum
       ((t (:inherit    (shadow default background)
						      :foreground ,subtle2
						      :slant      oblique
						      :height     0.94))))

`(region
       ((t (:background ,regionb :foreground ,regionf))))

'(trailing-whitespace
       ((t (:background "#571C0E"
						      :foreground "#331C10" ))))


`(solaire-default-face
       ((t (:inherit default :background ,roseb :foreground ,rosef))))

`(solaire-hl-line-face
       ((t (:background "#3366fc" :foreground "white"))))

`(treemacs-root-face ((t (:inherit default :foreground ,rosef :weight normal :height 1.2))))
`(treemacs-directory-face ((t (:inherit default :foreground ,rosef :weight light :height 0.9))))
`(treemacs-file-face ((t (:inherit default :foreground ,rosef :weight light :height 0.9))))
`(treemacs-git-ignored-face ((t (:inherit default :foreground "#8a8a8a" :weight light :height 0.9))))
;; text editing:1 ends here

;; isearch

;; [[file:../../notebook/config/emacs/themes/pale-rose.org::*isearch][isearch:1]]
`(isearch
       ((t (:background ,foreground
						      :box         "white"))))

`(isearch-fail
       ((t (:background "#382323"
						      :foreground ,uhoh))))
;; isearch:1 ends here

;; modeline


;; [[file:../../notebook/config/emacs/themes/pale-rose.org::*modeline][modeline:1]]
`(mode-line
       ((t (:inherit
		      'fringe
		      :foreground ,rosef
		      :background ,roseb))))

`(mode-line-inactive
       ((t (:inherit    'mode-line
						      :slant       italic
						      :box         nil
						      :background "#fff4f6" ; (sat- roseb 10)
						      :foreground "#333333"))))

'(mode-line-highlight
       ((t (:box        "black"
						      :background "red"))))

`(mode-line-buffer-id
       ((t (:foreground ,blue))))
;; modeline:1 ends here

;; widget and customize

;; [[file:../../notebook/config/emacs/themes/pale-rose.org::*widget and customize][widget and customize:1]]
`(widget-field
       ((t (:background ,foreground
						      :foreground "white"))))

'(custom-group-tag-face
       ((t (:foreground "#67D9F0"
						      :height      1.2))))

'(custom-variable-tag-face
       ((t (:foreground "#729FCF"))))

'(custom-state-face
       ((t (:foreground "#A6E32D"))))

'(link
       ((t (:foreground "#729FCF"
						      :underline  nil))))
;; widget and customize:1 ends here

;; Company

;; [[file:../../notebook/config/emacs/themes/pale-rose.org::*Company][Company:1]]
`(company-tooltip
		      ((t (
				:foreground ,subtle2))))

`(company-tooltip-selection
		      ((t (
				:foreground ,rosef
				:background ,roseb))))
;; Company:1 ends here

;; Diff
;; investigate this, i think it might be unreadable?

;; [[file:../../notebook/config/emacs/themes/pale-rose.org::*Diff][Diff:1]]
'(diff-added
       ((t (:background "#96f3bD"))))

'(ediff-odd-diff-C
       ((t (:background "#a6f3bD"))))

'(diff-changed
       ((t (:background "#67D9F0"))))

'(ediff-even-diff-C
       ((t (:background "#FA2573"))))

`(diff-header
       ((t (:foreground ,subtle2))))

`(diff-file-header
       ((t (:foreground ,subtle2))))

`(diff-context
       ((t (:foreground "#000000"))))
;; Diff:1 ends here

;; Whitespace mode

;; [[file:../../notebook/config/emacs/themes/pale-rose.org::*Whitespace mode][Whitespace mode:1]]
`(whitespace-indentation
       ((t (:background ,background
						      :foreground "#82996A"))))

`(whitespace-line
       ((t (:background ,background
						      :foreground "#7A6D89"))))

`(whitespace-newline
       ((t (:foreground ,background
						      :weight      normal))))

`(whitespace-space
       ((t (:background ,background
						      :foreground ,background))))

`(whitespace-tab
       ((t (:background ,background
						      :foreground ,background))))

'(whitespace-space-after-tab
       ((t (:background "#303636"
						      :foreground "#82996A"))))

'(whitespace-space-before-tab
       ((t (:background "#382323"
						      :foreground "#82996A"))))

'(whitespace-trailing
       ((t (:inherit 'trailing-whitespace))))

'(whitespace-empty
       ((t (:background "#382323"
						      :foreground "#624935"))))

'(whitespace-hspace
       ((t (:background "#382323"
						      :foreground "#82996A"))))
;; Whitespace mode:1 ends here

;; [[file:../../notebook/config/emacs/themes/pale-rose.org::*Whitespace mode][Whitespace mode:2]]
;;
;; Flyspell stuff
;;
`(flyspell-duplicate
       ((t
	      (:background
	       "#382323"
	       :underline  ,variable))))

`(flyspell-incorrect
       ((t (:background
		      ,roseb
		      :underline ,sky))))
;; Whitespace mode:2 ends here

;; ERC


;; [[file:../../notebook/config/emacs/themes/pale-rose.org::*ERC][ERC:1]]
'(erc-notice-face
       ((t (:foreground "#75766A"))))

'(erc-current-nick-face
       ((t (:foreground "#FA2573"))))

'(erc-input-face
       ((t (:foreground "#ABB4A1"))))

'(erc-nick-default-face
       ((t (:foreground "#729FCF"))))

'(erc-prompt-face
       ((t (:foreground "#FC951E"
						      :background nil))))

'(erc-timestamp-face
       ((t (:foreground "#75766A"))))
;; ERC:1 ends here

;; Outline headings
;; these will be used by org, too

;; [[file:../../notebook/config/emacs/themes/pale-rose.org::*Outline headings][Outline headings:1]]
'(outline-1
       ((t (:foreground "#000000"))))
'(outline-2
       ((t (:foreground "#031B25"))))
'(outline-3
       ((t (:foreground "#122c68"))))
'(outline-4
       ((t (:foreground "#2f4d87"))))
'(outline-5
       ((t (:foreground "#5f5f9f"))))
'(outline-6
       ((t (:foreground "#6090c0"))))
'(outline-7
       ((t (:foreground "#427ba6"))))
'(outline-8
       ((t (:foreground "#235b85"))))
;; Outline headings:1 ends here

;; Org

;; [[file:../../notebook/config/emacs/themes/pale-rose.org::*Org][Org:1]]
`(org-tag
       ((t (:inherit fixed-pitch :weight bold :background ,roseb :foreground "#000000"))))
`(org-block ((t (:background ,roseb :foreground ,rosef))))
`(org-block-begin-line ((t
								 (:inherit fixed-pitch
											       :foreground ,subtle
											       :height 0.9))))
`(org-block-end-line ((t (:inherit org-block-begin-line))))

'(org-code ((t (:background "#caeaf7" :inherit fixed-pitch))))
'(org-hide
       ((t (:foreground "#303636"))))
`(org-headline-done
       ((t (:foreground ,subtle :strike-through "#000000"))))
`(org-done
       ((t (:weight bold :foreground ,lone))))
`(org-link
       ((t (:foreground "#33ccff"))))
`(org-todo
       ((t (:weight bold :foreground ,sky))))
`(org-verbatim
       ((t (:inherit fixed-pitch :background "#f7f7f7" :foreground ,function))))
'(org-special-keyword
       ((t (:inherit 'font-lock-type-face))))
;; Org:1 ends here

;; tabs

;; [[file:../../notebook/config/emacs/themes/pale-rose.org::*tabs][tabs:1]]
`(tab-line
       ((t (:inherit variable-pitch
					      :height 1.0
					      :background ,roseb
					      :foreground "#000000"))))
`(tab-line-tab
       ((t (
		      :background "#ffffff"
		      :foreground "#662244"))))

`(tab-line-tab-current
       ((t (
		      :box (:line-width 10 :color "white")
		      :background "white"
		      :foreground "black"))))

`(tab-line-tab-inactive
       ((t (
		      :box (:line-width 10 :color ,roseb)
		      :slant italic
		      :background ,roseb
		      :foreground "#662244"))))
;; tabs:1 ends here

;; end

;; [[file:../../notebook/config/emacs/themes/pale-rose.org::*end][end:1]]
))
;; end:1 ends here
