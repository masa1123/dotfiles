;;; Yatex
(add-to-list 'load-path "~/.emacs.d/site-lisp/yatex")

(setq auto-mode-alist
      (append '(("\\.tex$" . yatex-mode)) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)

(setq YaTeX-inhibit-prefix-letter t)

;;;   nil=YaTeX-kanji-code が nil なら coding-system に感知しない
;;;   0=no-converion -> Emacs内部で使用されている文字コード (Emacs23ではutf-8-emacs)
;;;   1=Shift JIS (Shift_JIS)
;;;   2=JIS (ISO-2022-JP)
;;;   3=EUC (EUC-JP)
;;;   4=UTF-8
(setq YaTeX-kanji-code nil)

(setq tex-command "ptex2pdf -l -ot \"-kanji=utf8 -guess-input-enc -synctex=1\"")
;(setq tex-command "
(setq dvi2-command "/usr/bin/open -a Preview")

;;; for aspell
(setq-default ispell-program-name "aspell")

;;; cython-mode
(add-to-list 'load-path "~/.emacs.d/site-lisp")
(require 'cython-mode)
;;; matlab-mode
(autoload 'matlab-mode "matlab" "Enter Matlab mode." t)
(setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))
(autoload 'matlab-shell "matlab" "Interactive Matlab mode." t)

;;;; term+
;(add-to-list 'load-path "~/.emacs.d/site-lisp/term-plus-all/main")
;(require 'term+)

;;; C++ mode
(setq-default c-basic-offset 4)

;;;disablize backups
(setq make-backup-files nil)
(setq auto-save-default nil)