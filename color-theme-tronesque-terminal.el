(deftheme tronesque-terminal
  "Created 2013-02-20.")

(custom-theme-set-faces
 'tronesque-terminal
 '(button ((t (:background "brightmagenta" :foreground "black" :box (:line-width 2 :style released-button)))))
 '(button ((t (:background "brightmagenta" :foreground "black" :box (:line-width 2 :style released-button)))))
 '(cursor ((t (:inverse-video t :foreground "black" :background "white"))))
 '(custom-button ((t (:background "brightmagenta" :foreground "black" :box (:line-width 2 :style released-button)))))
 '(custom-state ((t (:foreground "green"))))
 '(default ((t (:background "black" :foreground "white"))))
 '(escape-glyph ((t (:foreground "brightgreen"))))
 '(flymake-errline ((t (:background "red" :foreground "black" :underline nil))))
 '(flymake-warnline ((t (:background "brightred" :foreground "black" :underline nil))))
 '(font-lock-builtin-face ((t (:slant italic :foreground "magenta"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "blue"))))
 '(font-lock-comment-face ((t (:foreground "brightblue"))))
 '(font-lock-constant-face ((t (:weight bold :foreground "brightmagenta"))))
 '(font-lock-doc-face ((t (:slant italic :foreground "green"))))
 '(font-lock-function-name-face ((t (:foreground "cyan"))))
 '(font-lock-keyword-face ((t (:weight bold :foreground "magenta"))))
 '(font-lock-negation-char-face ((t (:foreground "red"))))
 '(font-lock-preprocessor-face ((t (:foreground "magenta"))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((t (:foreground "green"))))
 '(font-lock-type-face ((t (:foreground "brightred"))))
 '(font-lock-variable-name-face ((t (:foreground "red"))))
 '(font-lock-warning-face ((t (:foreground "brightred" :underline t))))
 '(fringe ((t (:foreground "black" :background "#effffe"))))
 '(header-line ((t (:box (:line-width -1 :color nil :style released-button) :foreground "black" :background "white"))))
 '(highlight ((t (:background "yellow" :foreground "black"))))
 '(hl-line ((t (:background "blue"))))
 '(idle-highlight ((t (:foreground "brightyellow"))))
 '(ido-indicator ((t (:background "red" :foreground "black" :width condensed))))
 '(ido-only-match ((t (:foreground "brightgreen"))))
 '(ido-subdir ((t (:foreground "red"))))
 '(info-menu-star ((t (:foreground "red"))))
 '(info-xref ((t (:foreground "green"))))
 '(isearch ((t (:weight bold :foreground "black" :background "brightyellow"))))
 '(isearch-fail ((t (:weight bold :foreground "red"))))
 '(lazy-highlight ((t (:weight bold :foreground "black" :background "white"))))
 '(link ((t (:foreground "brightcyan" :underline t))))
 '(link-visited ((t (:foreground "cyan" :underline t))))
 '(match ((t (:foreground "black" :background "cyan"))))
 '(minibuffer-prompt ((t (:foreground "cyan"))))
 '(mode-line ((t (:box (:line-width -1 :color nil :style nil) :foreground "white" :background "black"))))
 '(mode-line-buffer-id ((t (:weight normal :foreground "blue" :background "white"))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((t :background "brightmagenta" :foreground "black" (:box (:line-width 2 :style released-button)))))
 '(mode-line-inactive ((t (:box (:line-width -1 :color nil :style nil) :foreground "black" :background "white"))))
 '(next-error ((t (:inherit (region)))))
 '(org-hide ((t (:background "black" :foreground "black"))))
 '(query-replace ((t (:inherit (isearch)))))
 '(region ((t (:background "blue"))))
 '(secondary-selection ((t (:background "brightblue"))))
 '(shadow ((t (:foreground "blue"))))
 '(trailing-whitespace ((t (:background "red"))))
)

(provide-theme 'tronesque-terminal)
