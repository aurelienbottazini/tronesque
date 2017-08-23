;;; tronesque-theme.el --- Color Theme based on Tron universe.

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; License: GPL-3+

;; Copyright (c) 2017  Aurélien Bottazini

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;; Author: Aurélien Bottazini <aurelienbottazini.com>
;; URL: https://github.com/aurelienbottazini/tronesque
;; Version: 2.0

;;; Commentary:

;; In your init file:
;; (load-theme 'tronesque)
;;
;; You can also add:
;; (tronesque-mode-line)
;; To get a custom mode-line with additional colors
;;
;; Supports both Emacs with a window system and Emacs within a
;; terminal. When used within a terminal you should use tronesque
;; themed ansi colors (available in github repository)

;;; Code:
(deftheme tronesque
  "Theme based on Tron universe. Colors are inspired / taken from the movies.
More information on Tron: https://en.wikipedia.org/wiki/Tron")

(let (
      (base00 (if (window-system) "#081724" "black"))
      (base01 (if (window-system) "#033340" "brightblack"))
      (base02 (if (window-system) "#1d5483" "brightyellow"))
      (base03 (if (window-system) "#2872b2" "brightblue"))
      (base04 (if (window-system) "#d3f9ee" "white"))
      (base05 (if (window-system) "#a6f3dd" "brightgreen"))
      (base06 (if (window-system) "#effffe" "brightwhite"))
      (base07 (if (window-system) "#fffed9" "brightcyan"))
      (red (if (window-system) "#ff694d" "red"))
      (orange (if (window-system) "#f5b55f" "brightred"))
      (yellow (if (window-system) "#fffe4e" "yellow"))
      (magenta (if (window-system) "#afc0fd" "brightmagenta"))
      (violet (if (window-system) "#96a5d9" "magenta"))
      (blue (if (window-system) "#bad6e2" "blue"))
      (cyan (if (window-system) "#d2f1ff" "cyan"))
      (green (if (window-system) "#68f6cb" "green")))

  (custom-theme-set-faces
   'tronesque


   `(button ((t (:background ,base00
                 :foreground ,magenta
                 :inherit nil
                 :box (:line-width 2 :style released-button)))))
   `(cursor ((t (:background ,base06))))

   `(custom-button ((t (:background ,magenta
                        :foreground ,base00
                        :inherit nil
                        :box (:line-width 2 :style released-button)))))
   `(custom-state ((t (:foreground ,green))))
   `(default ((t (:background ,base00 :foreground ,base04))))
   `(dired-directory ((t (:background ,green :foreground ,base00))))
   `(dired-symlink ((t (:foreground ,yellow))))

   `(escape-glyph ((t (:foreground ,green))))
   `(flymake-errline ((t (:background ,red
                          :foreground ,base00
                          :underline nil))))
   `(flymake-warnline ((t (:background ,orange
                           :foreground ,base00
                           :underline nil))))
   `(font-lock-builtin-face ((t (:slant italic :foreground ,violet))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,base03))))
   `(font-lock-comment-face ((t (:foreground ,base03))))
   `(font-lock-constant-face ((t (:weight bold :foreground ,magenta))))
   `(font-lock-doc-face ((t (:slant italic :foreground ,green))))
   `(font-lock-function-name-face ((t (:foreground ,blue))))
   `(font-lock-keyword-face ((t (:weight bold :foreground ,violet))))
   `(font-lock-negation-char-face ((t (:foreground ,red))))
   `(font-lock-preprocessor-face ((t (:foreground ,violet))))
   `(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
   `(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
   `(font-lock-string-face ((t (:foreground ,green))))
   `(font-lock-type-face ((t (:foreground ,orange))))
   `(font-lock-variable-name-face ((t (:foreground ,red))))
   `(font-lock-warning-face ((t (:foreground ,orange :underline t))))
   `(fringe ((t (:foreground ,base04 :background ,base01))))
   `(header-line ((t (:box (:line-width -1 :color nil :style released-button)
                      :foreground ,base00 :background ,base07))))
   `(highlight ((t (:background ,yellow :foreground ,base00))))
   `(hl-line ((t (:background ,base01 :inherit nil))))
   `(idle-highlight ((t (:background ,base01 :foreground nil))))
   `(ido-indicator ((t (:background ,red
                        :foreground ,base00
                        :width condensed))))
   `(ido-only-match ((t (:background ,green :foreground ,base00))))
   `(ido-first-match ((t (:background ,green :foreground ,base00))))
   `(ido-subdir ((t (:foreground ,red))))
   `(info-menu-star ((t (:foreground ,red))))
   `(info-xref ((t (:foreground ,green))))
   `(isearch ((t (:weight bold :foreground ,base00 :background ,yellow))))
   `(isearch-fail ((t (:weight bold :foreground ,red))))
   `(lazy-highlight ((t (:weight bold
                         :foreground ,base00
                         :background ,base07))))
   `(link ((t (:foreground ,cyan :underline t))))
   `(link-visited ((t (:foreground ,blue :underline t))))
   `(match ((t (:foreground ,base00 :background ,blue))))
   `(minibuffer-prompt ((t (:foreground ,yellow))))
   `(next-error ((t (:inherit (region)))))
   `(org-hide ((t (:background ,base00 :foreground ,base00))))
   `(org-code ((t (:foreground ,violet))))
   `(org-date ((t (:underline t :foreground ,green))))
   `(org-agenda-date-today ((t (:foreground ,red :weight bold))))
   `(query-regplace ((t (:inherit (isearch)))))
   `(region ((t (:background ,base02))))
   `(secondary-selection ((t (:background ,base01))))
   `(shadow ((t (:foreground ,base02))))
   `(trailing-whitespace ((t (:background ,red))))

   `(magit-header ((t (:background ,base01
                       :foreground ,magenta
                       :inherit nil ))))
   `(magit-item-highlight ((t (:background ,base01 :foreground ,base06))))
   `(magit-branch ((t (:foreground ,base05))))
   `(magit-diff-hunk-header ((t (:background ,base02))))
   `(magit-section-title ((t (:background ,orange
                              :foreground ,base00
                              :inherit nil
                              :box (:line-width 2 :style released-button)))))
   `(diff-file-header ((t (:background ,base00
                           :foreground ,magenta
                           :inherit nil
                           :box (:line-width 2 :style released-button)))))
   `(diff-context ((t (:inherit diff-changed :foreground ,base03))))
   `(diff-added ((t (:inherit diff-changed
                     :foreground ,green
                     :background ,base00))))
   `(diff-removed ((t (:inherit diff-changed
                       :foreground ,red
                       :background ,base00))))

   `(outline-1 ((t (:foreground ,red :height 1.7))))
   `(outline-2 ((t (:foreground ,orange :height 1.3))))
   `(outline-3 ((t (:foreground ,yellow :height 1.05))))
   `(outline-4 ((t (:foreground ,blue))))
   `(outline-5 ((t (:foreground ,magenta))))
   `(outline-6 ((t (:foreground ,green))))
   `(outline-7 ((t (:foreground ,cyan))))
   `(outline-8 ((t (:foreground ,violet))))

   `(success ((t (:background ,green :foreground ,base00 :weight bold))))
   `(compilation-mode-line-exit ((t (:inherit compilation-info
                                     :background ,green
                                     :weight bold))))
   `(compilation-mode-line-fail ((t (:inherit compilation-error
                                     :background ,red
                                     :weight bold))))

   `(erc-dangerous-host-face ((t (:foreground ,red))))
   `(erc-direct-msg-face ((t (:foreground ,red))))
   `(erc-error-face ((t (:foreground ,red))))
   `(erc-fool-face ((t (:foreground ,base02))))
   `(erc-header-line ((t (:background ,base07 :foreground ,base00))))
   `(erc-inverse-face ((t (:background ,base04 :foreground ,base00))))
   `(erc-keyword-face ((t (:foreground ,green :weight bold))))
   `(erc-nick-msg-face ((t (:foreground ,red :weight bold))))
   `(erc-notice-face ((t (:foreground ,base02 :weight bold))))
   `(erc-pal-face ((t (:foreground ,magenta :weight bold))))
   `(erc-prompt-face ((t (:background ,violet
                          :foreground ,base00
                          :weight bold))))
   `(erc-timestamp-face ((t (:foreground ,green :weight bold))))
   `(erc-input-face ((t (:foreground ,orange))))
   `(erc-my-nick-face ((t (:foreground ,yellow))))
   `(erc-current-nick-face ((t (:foreground ,yellow))))

   `(show-paren-match ((t (:background ,base03 :foreground ,green))))
   `(show-paren-mismatch ((t (:background ,red :foreground ,base00))))
   `(sp-show-pair-match-face ((t (:inherit show-paren-match))))
   `(sp-show-pair-mismatch-face ((t (:inherit show-paren-mismatch))))
   `(sp-pair-overlay-face ((t (:inherit sp-show-pair-match-face))))
   `(ac-completion-face ((t (:foreground ,base02 :underline t))))
   `(ac-candidate-face ((t (:background ,base04 :foreground ,base00))))
   `(ac-candidate-mouse-face ((t (:inherit ac-completion-face))))
   `(ac-selection-face ((t (:background ,base02))))
   `(writegood-weasels-face ((t (:inherit font-lock-warning-face))))

   `(company-echo-common ((t (:foreground ,orange))))
   `(company-preview ((t (:background ,base02 :foreground ,base06))))
   `(company-preview-common ((t (:inherit company-preview
                                 :foreground ,base05))))
   `(company-preview-search ((t (:inherit company-preview
                                 :background ,yellow))))
   `(company-scrollbar-bg ((t (:inherit company-tooltip :background ,violet))))
   `(company-scrollbar-fg ((t (:background ,blue))))
   `(company-template-field ((t (:background ,yellow :foreground ,violet))))
   `(company-tooltip ((t (:background ,base02 :foreground ,base04))))
   `(company-tooltip-annotation ((t (:inherit company-tooltip
                                     :foreground ,base00))))
   `(company-tooltip-common ((t (:inherit company-tooltip
                                 :foreground ,base04))))
   `(company-tooltip-common-selection ((t (:inherit company-tooltip-selection
                                           :foreground ,yellow))))
   `(company-tooltip-selection ((t (:inherit company-tooltip
                                    :background ,base01))))
   `(helm-buffer-directory ((t (:background ,base00 :foreground ,red))))
   `(helm-buffer-file ((t (:foreground ,base05 :background ,base00))))
   `(helm-buffer-not-saved ((t (:foreground ,orange))))
   `(helm-buffer-process ((t (:foreground ,orange))))
   `(helm-buffer-saved-out ((t (:background ,base00 :foreground ,red))))
   `(helm-buffer-size ((t (:foreground ,magenta))))
   `(helm-candidate-number ((t (:background ,yellow :foreground ,base00))))
   `(helm-header ((t (:inherit header-line))))
   `(helm-prefarg ((t (:foreground ,green))))
   `(helm-selection ((t (:background ,green
                         :foreground ,base00
                         :underline nil))))
   `(helm-separator ((t (:foreground ,red))))
   `(helm-source-header ((t (:background ,violet
                             :foreground ,base00
                             :weight bold :height 1.3))))
   `(helm-visible-mark ((t (:background ,green :foreground ,base00))))

   `(whitespace-empty ((t (:background ,yellow :foreground ,base00))))
            `(whitespace-hspace ((t (:background ,red :foreground ,yellow))))
   `(whitespace-indentation ((t (:background ,red :foreground ,yellow))))
   `(whitespace-line ((t (:foreground ,red))))
   `(whitespace-newline ((t (:foreground ,base02 :weight normal))))
   `(whitespace-space ((t (:background ,base00 :foreground ,base02))))
   `(whitespace-space-after-tab ((t (:background ,yellow :foreground ,red))))
   `(whitespace-pace-before-tab ((t (:background ,yellow :foreground ,orange))))
   `(whitespace-tab ((t (:background ,red :foreground ,yellow))))
   `(whitespace-trailing ((t (:background ,red
                              :foreground ,yellow :weight bold))))

    `(markdown-header-face ((t (:foreground ,red :weight bold))))
    `(markdown-header-face-1 ((t (:inherit outline-1))))
    `(markdown-header-face-2 ((t (:inherit outline-2))))
    `(markdown-header-face-3 ((t (:inherit outline-3))))
    `(markdown-header-face-4 ((t (:inherit outline-4))))
    `(markdown-header-face-5 ((t (:inherit outline-5))))
   )

  (custom-theme-set-variables
   'tronesque

   `(ansi-color-names-vector
     ;; black, red, green, yellow, blue, magenta, cyan, white
     [,base00 ,red ,green ,yellow ,blue ,magenta ,cyan ,base04])
   `(ansi-term-color-vector
     ;; black, red, green, yellow, blue, magenta, cyan, white
     [unspecified ,base00 ,red ,green ,yellow ,blue ,magenta ,cyan ,base04]))

  ;; Extra mode line faces
  (make-face 'mode-line-read-only-face)
  (make-face 'mode-line-modified-face)
  (make-face 'mode-line-clean-face)
  (make-face 'mode-line-folder-face)
  (make-face 'mode-line-filename-face)
  (make-face 'mode-line-position-face)
  (make-face 'mode-line-mode-face)
  (make-face 'mode-line-minor-mode-face)
  (make-face 'mode-line-vc-face)
  (make-face 'mode-line-80col-face)

  (set-face-attribute 'mode-line nil
                      :foreground base00 :background base03
                      :inverse-video nil
                      :box `(:line-width 2 :color ,base03  :style nil))
  (set-face-attribute 'mode-line-inactive nil
                      :foreground base00 :background base01
                      :inverse-video nil
                      :box `(:line-width 2 :color ,base01 :style nil))
  (set-face-attribute 'mode-line-read-only-face nil
                      :inherit 'mode-line-face
                      :foreground red)
  (set-face-attribute 'mode-line-modified-face nil
                      :inherit 'mode-line-face
                      :background red
                      :box `(:line-width 2 :color ,red :style nil))
  (set-face-attribute 'mode-line-clean-face nil
                      :inherit 'mode-line-face
                      :background green
                      :box `(:line-width 2 :color ,green :style nil))
  (set-face-attribute 'mode-line-folder-face nil
                      :inherit 'mode-line-face
                      :foreground base00
                      :background blue
                      :box `(:line-width 2 :color ,blue :style nil))
  (set-face-attribute 'mode-line-filename-face nil
                      :inherit 'mode-line-face
                      :foreground base02
                      :background orange
                      :box `(:line-width 2 :color ,orange :style nil)
                      :weight 'bold)
  (set-face-attribute 'mode-line-position-face nil
                      :inherit 'mode-line-face
                      :height 100)
  (set-face-attribute 'mode-line-mode-face nil
                      :inherit 'mode-line-face
                      :foreground base00
                      :background blue
                      :box `(:line-width 2 :color ,blue :style nil))
  (set-face-attribute 'mode-line-minor-mode-face nil
                      :foreground base00
                      :height 110)
  (set-face-attribute 'mode-line-vc-face nil
                      :inherit 'mode-line-face
                      :background green
                      :box `(:line-width 2 :color ,green :style nil))
  (set-face-attribute 'mode-line-80col-face nil
                      :inherit 'mode-line-position-face
                      :foreground "black" :background orange
                      :box `(:line-width 2 :color ,orange :style nil))
  )

(defun tronesque-mode-line ()
  "Change default mode-line."
  (interactive)
  (setq-default
   mode-line-format
   '(
     "%e"
     mode-line-front-space
     mode-line-mule-info
     mode-line-client
     mode-line-modified
     mode-line-remote
     mode-line-frame-identification
     (:propertize " "
                  face mode-line-filename-face)
     (:propertize mode-line-buffer-identification
                  face mode-line-filename-face)
     (:propertize " "
                  face mode-line-filename-face)
     " "
     mode-line-position
     (vc-mode vc-mode)
     " "
     (:propertize " "
                  face mode-line-mode-face)
     (:propertize mode-name
                  face mode-line-mode-face)
     (:propertize " "
                  face mode-line-mode-face)

     (:eval (propertize (format-mode-line minor-mode-alist)
                        'face 'mode-line-minor-mode-face))
     mode-line-misc-info
     mode-line-end-spaces)))

;; Helper function
(defun shorten-directory (dir max-length)
  "Show up a directory named `DIR' with `MAX-LENGTH' characters."
  (let ((path (reverse (split-string (abbreviate-file-name dir) "/")))
        (output ""))
    (when (and path (equal "" (car path)))
      (setq path (cdr path)))
    (while (and path (< (length output) (- max-length 4)))
      (setq output (concat (car path) "/" output))
      (setq path (cdr path)))
    (when path
      (setq output (concat ".../" output)))
    output))


;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'tronesque)
;;; tronesque-theme.el ends here
