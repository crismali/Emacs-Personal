(setq
 ns-command-modifier   'meta            ; Apple/Command key is Meta
 ns-alternate-modifier 'super           ; Option is the Mac Option key
 mouse-wheel-scroll-amount '(1)
 mouse-wheel-progressive-speed nil)

;; (defun switch-to-previous-buffer ()
;;   "toggle between this and previous buffer"
;;   (interactive)
;;   (switch-to-buffer (other-buffer))

(defun maximize-frame ()
  (interactive)
  (set-frame-position (selected-frame) 0 0)
  (set-frame-size (selected-frame) 1000 1000))

(defun set-font-mba ()
  (interactive)
  (set-font-size 113))

(defun set-font-pairing-station ()
  (interactive)
  (set-font-size 160))

(defun set-font-size (font-height)
  (custom-set-faces `(default ((t (:height ,font-height :family "Monaco"))))))


(global-rainbow-delimiters-mode t)

(scroll-bar-mode -1)
(set-fringe-mode 0)
(global-linum-mode 1)
;;(global-hl-line-mode -1)
(setq linum-format " %d ")
(blink-cursor-mode t)
(set-default 'cursor-type 'bar)
(global-visual-line-mode t)
;;More sets
(setq prelude-whitespace nil)
(setq ispell-dictionary "en")
(setq default-tab-width 2)
(setq js-indent-level 2) ;nerd rage I must set this separate from 'default-tab-width
(setq-default show-trailing-whitespace nil)

(setq vc-suppress-confirm t)
(setq vc-follow-symlinks t)


(global-set-key (kbd "C-S-f") 'prelude-indent-buffer)
(global-set-key (kbd "C-\\") 'switch-to-previous-buffer)
;(global-set-key (kbd "RET") 'newline-and-indent)

(setq prelude-guru nil)

(add-hook 'before-save-hook 'whitespace-cleanup nil t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; (disable-theme 'zenburn)
; (load-theme 'neopolitan t)
