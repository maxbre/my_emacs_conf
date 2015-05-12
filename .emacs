(setq load-path (cons "~/build/emacs/org-mode/lisp" load-path))
(setq load-path (cons "~/build/emacs/org-mode/contrib/lisp" load-path))

(require 'org-install)

; ----
; export email html form
(require 'org-mime)

(add-hook 'message-mode-hook
          (lambda ()
            (local-set-key "\C-c\M-o" 'org-mime-htmlize)))

(add-hook 'org-mode-hook
          (lambda ()
            (local-set-key "\C-c\M-o" 'org-mime-org-buffer-htmlize)))

;-----

;(require 'org-checklist)
; requires a2ps

(require 'org-mouse)

;; Enable org-mode
;(require 'org)

;; global key bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; log done with a timestamp
(setq org-log-done t)

;;indent and hide stars
(setq org-startup-indented t)
(setq org-hide-leading-stars t)
(setq org-odd-level-only t) 
(setq org-insert-heading-respect-content nil)

;; set todo list
(setq org-todo-keywords '((sequence "TODO" "WAITING" "|" "DONE" "CANCELED")))
;; set todo faces
(setq org-todo-keyword-faces
     '(("TODO" . org-warning) ("WAITING" . "dark orange")
       ("DONE" . "forest green") ("CANCELED" . "gray50")))

;; cut and paste
;; keep the cut and paste shortcut keys people are used to
(cua-mode t) 

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes nil)
 '(inhibit-startup-screen t)
 '(org-agenda-files (quote ("d:/2014/energia/checklist/stato_checklist.org" "d:/2014/energia/cds_fer/proc_aperti/stato_pratiche_fer.org")))
 '(org-directory "d:/my_gtd")
 '(org-enable-priority-commands nil)
 '(org-export-odt-convert-capabilities (quote (("Text" ("odt" "ott" "doc" "rtf" "docx") (("pdf" "pdf" nil) ("odt" "odt" nil) ("rtf" "rtf" nil) ("ott" "ott" nil) ("doc" "doc" ":\"MS Word 97\"") ("docx" "docx" nil) ("html" "html" nil))) ("Web" ("html") (("pdf" "pdf" nil) ("odt" "odt" nil) ("html" "html" nil))) ("Spreadsheet" ("ods" "ots" "xls" "csv" "xlsx") (("pdf" "pdf" nil) ("ots" "ots" nil) ("html" "html" nil) ("csv" "csv" nil) ("ods" "ods" nil) ("xls" "xls" nil) ("xlsx" "xlsx" nil))) ("Presentation" ("odp" "otp" "ppt" "pptx") (("pdf" "pdf" nil) ("swf" "swf" nil) ("odp" "odp" nil) ("otp" "otp" nil) ("ppt" "ppt" nil) ("pptx" "pptx" nil) ("odg" "odg" nil))))))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "mail.arpa.veneto.it")
 '(smtpmail-smtp-service 25))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;to set the cursor color
(set-cursor-color "blue")

;;to set foreground color to white
;;(set-foreground-color "white")

;;to set background color to black
;;(set-background-color "balck")

;;to manage the geometric size of initial window.
(setq initial-frame-alist '((width . 80) (height . 40)))

;; enable wheelmouse support by default
(mwheel-install)

;;set the keybinding so that f3 will start the shell
(global-set-key [f3] 'shell)

;;set the keybinding so that you can use f4 for goto line
;(global-set-key [f4] 'goto-line)
;;set the keybinding so that f5 will start query replace
;(global-set-key [f5] 'query-replace)
;(global-set-key [f6] 'switch-to-buffer)
;(global-set-key [f7] 'hippie-expand)
;(global-set-key [f8] 'ispell)

;disable backup
(setq backup-inhibited t)

;disable auto save
(setq auto-save-default nil)

; ess
(add-to-list 'load-path "~/build/emacs/ess-13.09-1/lisp")
(require 'ess-site)

; R code
(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)))

; poit to R installation dir
(setq org-babel-R-command "C:/Progra~1/R/R-3.1.0/bin/R --slave --no-save")

; enable export odt
(require 'ox-odt)
