
(setq my-path "~/.emacs.d/other/")

(defun add-load-path (module)
  (add-to-list 'load-path (concat my-path module)))



(require 'cedet)
(require 'semantic)

;; Ecb www.ecb.sourceforge.net
(add-load-path "ecb-snap")
(require 'ecb)

;;Yas
(add-load-path "yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory (concat my-path "yasnippet/snippets"))

;; Hippie stuff
(add-to-list 'hippie-expand-try-functions-list 'yas/hippie-try-expand) 

;; Scala Mode
(add-load-path "scala-mode")
(require 'scala-mode-auto)

;; Enable smart tab for coding
(require 'smart-tab)
(defun my-smart-tab-hook () (smart-tab-mode t))
(add-hook 'coding-hook 'my-smart-tab-hook)

defun

;; Enable linum mode for code
(require 'linum)
(defun my-linum-hook () (linum-mode t))
(add-hook 'coding-hook 'my-linum-hook)

(defun my-turn-off-indent-tabs-mode () (setq indent-tabs-mode nil))
(add-hook 'scala-mode-hook 'my-turn-off-indent-tabs-mode)
(setq smart-tab-using-hippie-expand 'hippie-expand)
