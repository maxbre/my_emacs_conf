
;;------------------------------------------------

;;;;org-mode configuration
;; Enable org-mode
(require 'org)

;; Make org-mode work with files ending in .org
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; The above is the default in recent emacsen

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cc" 'org-capture)
(define-key global-map "\C-cb" 'org-iswitchb)

;; log done with a timestamp
;;(setq org-log-done t)

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

;;---------------------------------------------------


;; cut and paste
;; keep the cut and paste shortcut keys people are used to
(cua-mode t) 

;;to set the cursor color
(set-cursor-color "blue")

;;to manage the geometric size of initial window
(setq initial-frame-alist '((width . 80) (height . 40)))

;; enable wheelmouse support by default
(mwheel-install)

;;set the keybinding so that f3 will start the shell
(global-set-key [f3] 'shell)

;disable backup
(setq backup-inhibited t)

;disable auto save
(setq auto-save-default nil)


;;------------------------------------------------


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (adwaita)))
 '(ess-R-font-lock-keywords
   (quote
    ((ess-R-fl-keyword:modifiers . t)
     (ess-R-fl-keyword:fun-defs . t)
     (ess-R-fl-keyword:keywords . t)
     (ess-R-fl-keyword:assign-ops . t)
     (ess-R-fl-keyword:constants . t)
     (ess-fl-keyword:fun-calls . t)
     (ess-fl-keyword:numbers . t)
     (ess-fl-keyword:operators . t)
     (ess-fl-keyword:delimiters . t)
     (ess-fl-keyword:= . t)
     (ess-R-fl-keyword:F&T . t))))
 '(inhibit-startup-screen t)
 '(org-agenda-files (quote ("~/desktop/20161019_stato_pratiche_fer.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
