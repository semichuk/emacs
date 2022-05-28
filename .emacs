;; Initialize package sources
(package-initialize)

(add-to-list 'load-path "/.emacs.d/") ;;указываем где будут лежать файлы расширений
(add-to-list 'load-path "~/.emacs.d/lisp/") 
(require 'package)
(require 'use-package)
(require'auto-close-tag)
(require 'py-autopep8)





(add-to-list 'package-archives
                 '("melpa" . "http://melpa.org/packages/") t )
(add-to-list 'package-archives
                 '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives
                 '("elpa" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)



(unless package-archive-contents
 (package-refresh-contents))


(use-package god-mode
  :bind (;; ( "M-i" . god-local-mode )
          ( "<escape>" . god-local-mode )
          ( "M-k" . next-line )
          ( "M-l" . previous-line )
          ( "M-j" . backward-char )
          ( "M-;" . forward-char ))
          ( "M-." . forward-word)
          ( "M-," . backward-word)
          ( "M-p" . yank)
          ( "M-y" . kill-ring-save)
          ( "M-m" . set-mark-command)
          ( "M-h" . move-beginning-of-line)
          ( "M-'" . move-end-of-line)
          ( "M-u" . undo)
          ( "M-n" . other-window)
          ( "M-d" . delete-window)
          ( "M-s" . save-buffer)
          ( "M-b" . list-buffers)
          ( "M-o" . save-buffers-kill-terminal)
  )


(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)


          
;; ;; Inhibit startup/splash screen
 (setq inhibit-splash-screen   t)
 (setq ingibit-startup-message t) ;; экран приветствия можно вызвать комбинацией C-h C-a
 (setq make-backup-files nil) ;; do not make backup files

;; ;; Show-paren-mode settings
 (show-paren-mode t) ;; включить выделение выражений между {},[],()
 (setq show-paren-style 'expression) ;; выделить цветом выражения между {},[],()


;; ;; Electric-modes settings
;; (electric-pair-mode    1) ;; автозакрытие {},[],() с переводом курсора внутрь скобок


 (electric-indent-mode -1) ;; отключить индентацию  electric-indent-mod'ом (default in Emacs-24.4)


 (blink-cursor-mode -1) ;; курсор не мигает      
 (setq ring-bell-function 'ignore) ;; отключить звуковой сигнал 

;; ;; Linum plugin
 (require 'linum) ;; вызвать Linum
 (line-number-mode   t) ;; показать номер строки в mode-line
 (global-linum-mode  t) ;; показывать номера строк во всех буферах
 (column-number-mode t) ;; показать номер столбца в mode-line
 (setq linum-format " %d") ;; задаем формат нумерации строк

 ;; Syntax highlighting
 (require 'font-lock)
 (global-font-lock-mode             t) ;; включено с версии Emacs-22. На всякий...
 (setq font-lock-maximum-decoration t)

;; ;; Indent settings
 (setq-default indent-tabs-mode nil) ;; отключить возможность ставить отступы TAB'ом
 (setq-default tab-width          4) ;; ширина табуляции - 4 пробельных символа
 (setq-default c-basic-offset     4)
 (setq-default standart-indent    4) ;; стандартная ширина отступа - 4 пробельных символа
 (setq-default lisp-body-indent   4) ;; сдвигать Lisp-выражения на 4 пробельных символа
 (global-set-key (kbd "RET") 'newline-and-indent) ;; при нажатии Enter перевести каретку и сделать отступ
 (setq lisp-indent-function  'common-lisp-indent-function)









          

 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(ein elpy ## less-css-mode git ac-html pungi neotree py-autopep8 tabbar slime session pod-mode muttrc-mode mutt-alias markdown-mode initsplit htmlize graphviz-dot-mode folding eproject diminish csv-mode company color-theme-modern browse-kill-ring boxquote bm bar-cursor apache-mode use-package god-mode)))
 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;; ;; Standard Jedi.el setting
 (add-hook 'python-mode-hook 'jedi:setup)
 (setq jedi:complete-on-dot t)    
 ;;     M-x el-get-install RET jedi RET
 ;;     M-x jedi:install-server RET
 ;; Then open Python file.





 (global-set-key [f8] 'neotree-toggle)

 (setq auto-close-tag-excluded-tags '("area"
                                      "base"
                                      "br"
                                      "col"
                                      "command"
                                      "embed"
                                      "hr"
                                      "img"
                                      "input"
                                      "keygen"
                                      "link"
                                      "meta"
                                      "param"
                                      "source"
                                      "track"
                                      "wbr"
                                      "php"))
 (global-auto-close-tag-mode t)
 (auto-close-tag-mode t)

(defun electric-pair ()
  "If at end of line, insert character pair without surrounding spaces.
   Otherwise, just insert the typed character."
  (interactive)
  (if (eolp) (let (parens-require-spaces) (insert-pair)) 
    (insert-pair )))
;;self-insert-command 1

(elpy-enable)
;; Use IPython for REPL

(setq python-shell-interpreter "jupyter"

      python-shell-interpreter-args "console --simple-prompt"

      python-shell-prompt-detect-failure-warning nil)

(add-to-list 'python-shell-completion-native-disabled-interpreters

             "jupyter")

(setq elpy-rpc-python-command "python3")
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
(add-hook 'python-mode-hook
          (lambda ()
           ;; (define-key python-mode-map "\"" 'electric-pair)
           ;; (define-key python-mode-map "\'" 'electric-pair)
            (define-key python-mode-map "(" 'electric-pair)
            (define-key python-mode-map "[" 'electric-pair)
            (define-key python-mode-map "{" 'electric-pair)
            (define-key python-mode-map "'" 'electric-pair)
            (define-key python-mode-map "\"" 'electric-pair)))

(add-hook 'html-mode-hook
          (lambda ()
           ;; (define-key python-mode-map "\"" 'electric-pair)
           ;; (define-key python-mode-map "\'" 'electric-pair)
            (define-key html-mode-map "(" 'electric-pair)
            (define-key html-mode-map "[" 'electric-pair)
            (define-key html-mode-map "{" 'electric-pair)
            (define-key html-mode-map "'" 'electric-pair)
            (define-key html-mode-map "\"" 'electric-pair)))


(add-hook 'css-mode-hook
          (lambda ()
           ;; (define-key python-mode-map "\"" 'electric-pair)
           ;; (define-key python-mode-map "\'" 'electric-pair)
            (define-key css-mode-map "(" 'electric-pair)
            (define-key css-mode-map "[" 'electric-pair)
            (define-key css-mode-map "{" 'electric-pair)
            (define-key css-mode-map "'" 'electric-pair)
            (define-key css-mode-map "\"" 'electric-pair)))


 ;; All plugins, which i should to install
   ;; ac-html 

   ;; company 

   ;; neotree
  
  ;; pungi 
   ;; use-package
   ;; auto-complete
   ;; bind-key 
   ;; company-jedi
   ;; dracula-theme 
   ;; jedi 
   ;; jedi-core 
   ;; python-environment
   ;; pyvenv 
   ;; virtualenvwrapper
  

