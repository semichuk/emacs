;;; ac-html-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ac-haml" "ac-haml.el" (0 0 0 0))
;;; Generated autoloads from ac-haml.el

(autoload 'ac-haml-enable "ac-haml" "\
Add ac-haml sources into ac-sources and enable auto-comple-mode" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ac-haml" '("ac-")))

;;;***

;;;### (autoloads nil "ac-html" "ac-html.el" (0 0 0 0))
;;; Generated autoloads from ac-html.el

(defvar ac-source-html-tag '((candidates . ac-source-html-tag-candidates) (prefix . "<\\(.*\\)") (symbol . "t")))

(defvar ac-source-html-attribute '((candidates . ac-source-html-attribute-candidates) (prefix . "<\\w[^>]*[[:space:]]+\\(.*\\)") (symbol . "a")))

(defvar ac-source-html-attribute-value '((candidates . ac-source-html-attribute-value-candidates) (prefix . ac-html-value-prefix) (document . ac-source-html-attribute-value-document) (symbol . "v")))

(autoload 'ac-html-enable "ac-html" "\
Add ac-html sources into ac-sources and enable auto-comple-mode." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ac-html" '("ac-")))

;;;***

;;;### (autoloads nil "ac-jade" "ac-jade.el" (0 0 0 0))
;;; Generated autoloads from ac-jade.el

(autoload 'ac-jade-enable "ac-jade" "\
Add ac-jade sources into ac-sources and enable auto-comple-mode" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ac-jade" '("ac-")))

;;;***

;;;### (autoloads nil "ac-slim" "ac-slim.el" (0 0 0 0))
;;; Generated autoloads from ac-slim.el

(autoload 'ac-slim-enable "ac-slim" "\
Add ac-slim sources into ac-sources and enable auto-comple-mode" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ac-slim" '("ac-s")))

;;;***

;;;### (autoloads nil nil ("ac-html-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ac-html-autoloads.el ends here
