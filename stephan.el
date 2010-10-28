
(setq my-path "~/.emacs.d/other/")

(progn
  (cd my-path)
  (normal-top-level-add-subdirs-to-load-path))

(require 'cedet) ; Inbuild CEDET
(require 'semantic)
(require 'ecb) ; Ecb www.ecb.sourceforge.net

;; Yas
(require 'yasnippet)
(yas/initialize)
(yas/load-directory (concat my-path "yasnippet/snippets"))

(add-to-list 'hippie-expand-try-functions-list 'yas/hippie-try-expand) ; Hippie stuff

;; Scala Mode
(require 'scala-mode)
(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))

;; Ensime
(add-to-list 'load-path (concat my-path "ensime/elisp"))
(require 'ensime)


;; Scamas with Ensime
;(add-to-list 'load-path (concat my-path "Scamacs/ensime/dist/elisp"))
;(require 'ensime-ecb)

(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)


;; Enable smart tab for coding
(require 'smart-tab)
(defun my-smart-tab-hook () (smart-tab-mode t))
(add-hook 'coding-hook 'my-smart-tab-hook)

;; Enable linum mode for code
(require 'linum)
(defun my-linum-hook () (linum-mode t))
(add-hook 'coding-hook 'my-linum-hook)

(defun my-turn-off-indent-tabs-mode () (setq indent-tabs-mode nil))
(add-hook 'scala-mode-hook 'my-turn-off-indent-tabs-mode)
(setq smart-tab-using-hippie-expand 'hippie-expand)


;; Fonts
(set-frame-font "Droid Sans Mono Slashed-11")
;(set-frame-font "Inconsolata-dz-11")
;(set-frame-font "Envy Code R-12")
