(require server)
  (unless (server-running-p)
    (server-start))

(use-package android-mode
  :ensure t
  )

(global-hl-line-mode t)

(use-package golden-ratio
  :ensure t
  :config (progn
  (require 'golden-ratio)
  (golden-ratio-mode 1)
	    )
  )

(use-package rainbow
  :ensure t
  :config (progn
	    )
  )
            ;;; beacon
;; highlights the cursor when scrolling
(use-package beacon
  :ensure t
  :config (progn
	    (beacon-mode 1)
	    ;;(setq beacon-color "#666600")
	    )
  )

            ;;; hungry delete
;; deletes all the whitespace between text
(use-package hungry-delete
  :ensure t
  :config (progn
	    (global-hungry-delete-mode 1)
	    )
  )

            ;;; aggresive indent
(use-package aggressive-indent
  :ensure t
  :config (progn
	    (global-aggressive-indent-mode 1)
	    )
  )

            ;;; expand region
(use-package expand-region
  :ensure t
  )

;; saves the clipboard from other programs and combines them with emacs
(setq save-interprogram-paste-before-kill t) 

;; auto-reverting options
(global-auto-revert-mode 1) ; automatically revert the buffer if your lazy about loading changed  buffers
(setq auto-revert-verbose nil) ; don't display any messages when doing so

;;;; general lets you easily add keybinds


    ;;; This is where i define my keybinds
(use-package general
  :ensure t
  :config (progn
            ;; ;; keybinds with no prefix
            ;; (general-define-key
            ;;  "<f5>" 'revert-buffer
            ;;  "C-'" 'avy-goto-word-1
            ;;  "C-s" 'swiper             ; search for string in current buffer
            ;;  "M-x" 'counsel-M-x        ; replace default M-x with ivy backend
            ;;  "M-S" 'avy-goto-char      ; jumps to the char
            ;;  "M-y" 'counsel-yank-pop
            ;;  "C-=" 'er/expand-region
            ;;  "C--" 'er/contract-region
            ;;  "C-c m c" 'mc/edit-lines
            ;;  "C->" 'mc/mark-next-like-this
            ;;  "C-<" 'mc/mark-previous-like-this
            ;;  "C-'" 'better-shell-shell
            ;;  "C-|" 'better-shell-remote-open

            ;;  ;; evil related
            ;;  ;; "s-h" 'evil-window-left
            ;;  ;; "s-j" 'evil-window-down
            ;;  ;; "s-k" 'evil-window-left
            ;;  ;; "s-l" 'evil-window-right


            ;;  )

            ;; ;; keymaps
            ;; (general-define-key :keymaps 'ivy-minibuffer-map
            ;;                     "M-y" 'ivy-next-line
            ;;                     )

            ;; (general-define-key :keymaps 'elfeed-search-mode-map
            ;;                     "q" 'bmj/elfeed-save-db-and-bury
            ;;                     "Q" 'bmj/elfeed-save-db-and-bury
            ;;                     "m" 'elfeed-toogle-star
            ;;                     "M" 'elfeed-toogle-star
            ;;                     "j" 'mz/make-and-run-elfeed-hydra
            ;;                     "J" 'mz/make-and-run-elfeed-hydra
            ;;                     )

            ;; ;; C-c prefix commands
            ;; (general-define-key :prefix "C-c"
            ;;                     ;; org mode related
            ;;                     "c"   'org-capture
            ;;                     "a"   'org-agenda

            ;;                     )
            ;; ;; C-x prefix commands
            ;; (general-define-key :prefix "C-x"
            ;;                     "b" 'ivy-switch-buffer
            ;;                     "C-b" 'ibuffer
            ;;                     "n" 'narrow-or-widen-dwim
            ;;                     )

            ;; SPACE prefix commands
            (general-define-key :states '(normal visual insert emacs)
                                :prefix "SPC"
                                :non-normal-prefix "C-SPC"

                                ;; ;; simple command
                                ;; "'"   '(iterm-focus :which-key "iterm")
                                ;; "?"   '(iterm-goto-filedir-or-home :which-key "iterm - goto dir")
                                ;; "/"   'counsel-ag
                                ;; "TAB" '(switch-to-other-buffer :which-key "prev buffer")
                                ;; "SPC" '(counsel-M-x  :which-key "M-x")

                                ;; ;; bind to simple key press
                                ;; "b"   'ivy-switch-buffer  ; change buffer, chose using ivy
                                ;; "B"   'ibuffer'
                                ;; "/"   'counsel-git-grep   ; find string in git project
                                ;; ;; bind to double key press
                                ;; "f"   '(:ignore t :which-key "files")
                                ;; "ff"  'counsel-find-file
                                ;; "fr"  'counsel-recentf
                                ;; "p"   '(:ignore t :which-key "project")
                                ;; "pf"  '(counsel-git :which-key "find file in git dir")

                                ;; ;; Applications
                                ;; "a" '(:ignore t :which-key "Applications")
                                ;; "ar" 'ranger
                                ;; "ad" 'dired

                                ;; ;; evil related

                                ;; ;; compiling
                                ;; "c" '(:ignore t :which-key "compiling")
                                ;; "cc" '(compile :which-key "compile")
                                ;; "cg" '(:ignore t :which-key "gcc")
                                ;; "cgc"  '(execute-c-program :which-key "c")

                                ;; ;; treemacs
                                ;; "t" '(:ignore t :which-key "treemacs")
                                ;; "tt" '(treemacs-toggle :which-key "treemacs-toggle")
                                ;; "t0" '(treemacs-select-window :which-key "treemacs-select-window")
                                ;; "t1" '(treemacs-delete-other-windows :which-key "treemacs-delete-other-windows")
                                ;; "tb" '(treemacs-bookmark :which-key "treemacs-bookmark")
                                ;; "tf" '(:ignore t :which-key "file")
                                ;; "tff" '(treemacs-find-file :which "treemacs-find-file")
                                ;; "tft" '(treemacs-find-tag :which "treemacs-find-tag")
                                ;; "tr" '(treemacs :which "treemacs")
                                ;; "tfP" '(treemacs-projectile :which-key "treemacs-projectile")
                                ;; "tfp" '(treemacs-projectile-toggle :which-key "treemacs-projectile-toggle")

                                ;; ;; window
                                ;; "w" '(:ignore t :which-key "window")
                                ;; "wo" '(ace-window :which-key "ace-window")
                                ;; "wO" '(other-window :which-key "other-window")
                                ;; "w0" '(delete-windows :which-key "delete-windows")
                                ;; "w1" '(delete-other-windows :which-key "delete-other-window")
                                ;; "w2" '(split-window-below :which-key "split-wind-below")
                                ;; "w3" '(split-window-right :which-key "split-wind-right")
                                ;; "w4" '(:ignore t :which-key "switch")
                                ;; "w40" '(kill-buffer-and-window :which-key "kill-buffer-and-window")
                                ;; "w4b" '(switch-to-buffer-other-window :which-key "switch-to-buffer-other-window")
                                ;; "w4o" '(display-buffer :which-key "display-buffer")
                                ;; "w4f" '(find-file-other-window :which-key "find-file-other-window")
                                ;; "w4d" '(dired-other-window :which-key "dired-other-window")
                                ;; "w4m" '(compose-mail-other-window :which-key "compose-mail-other-window")
                                ;; "w4." '(xref-find-definitions-other-window :which-key "xref-find-definitions-other-window")
                                ;; "w4r" '(xref-find-definitions-other-window :which-key "xref-find-definitions-other-window")
                                ;; "w^" '(enlarge-window :which-key "enlarge-window")
                                ;; "w}" '(enlarge-window-horizontally :which-key "enlarge-window-horizontally")
                                ;; "w{" '(shrink-window-horizontally :which-key "shrink-window-horizontally")
                                ;; "w-" '(shrink-window-if-larger-than-buffer :which-key "shrink-window-if-larger-than-buffer")
                                ;; "w+" '(balance-windows :which-key "balance-windows")
                                ;; "wh" 'evil-window-left
                                ;; "wj" 'evil-window-down
                                ;; "wk" 'evil-window-up
                                ;; "wl" 'evil-window-right


                                )

            ;; ;; normal extensions
            ;; (general-define-key :states '(normal)
            ;;                     "=" 'evil-numbers/inc-at-pt
            ;;                     "-" 'evil-numbers/dec-at-pt

                                )

            ;; visual extensions
            ;; (general-define-key :states '(visual)
            ;;                     "=" 'er/expand-region
            ;;                     "-" 'er/contract-region

                                ;; rectangles
                                ;; "gr" '(:ignore t :which-key "Rectangle")
                                ;; "grd" 'kill-rectangle
                                ;; "gry" 'copy-region-as-kill
                                ;; "grp" 'yank-rectangle
                                ;; "gr\"_d" 'delete-rectangle
                                ;; "gro" 'open-rectangle
                                ;; "grn" 'rectangle-number-lines
                                ;; "grca" 'clear-rectangle
                                ;; "grcw" 'delete-whitespace-rectangle
                                ;; "grci" 'string-rectangle
                                ;; "grI" 'string-insert-rectangle
                                ;; "grm" 'rectangle-mark-mode

                                )
            ))

(add-hook 'eshell '(cd /home/martin/))

;;;; themes

    ;;; color-theme
(use-package color-theme
  :ensure t
  )

    ;;; solarized
(use-package solarized
  :ensure solarized-theme
  :config (progn
            ;; (setq solarized-scale-org-headlines nil)
            )
  )

    ;;; monokai
(use-package monokai-theme
  :ensure t
  )

    ;;; sanityinc-tomorrow
(use-package color-theme-sanityinc-tomorrow
  :ensure t
  )


(use-package gruvbox-theme
  :ensure t
  )

(use-package moe-theme
  :ensure t
  )

(use-package noctilux-theme
  :ensure t
  )
  ;;; theme options
(load-theme 'moe-dark t)
