(setq user-full-name "Paul Lunn"
      user-mail-address "paulilunn@gmail.com")

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")
			 ))
(package-initialize)


(defvar my-packages
  '(neotree smex smartparens auto-complete dracula-theme centaur-tabs)
  "A list of packages to ensure are installed at launch.")

(defun my-packages-installed-p ()
  (cl-loop for p in my-packages
           when (not (package-installed-p p)) do (cl-return nil)
           finally (cl-return t)))

(unless (my-packages-installed-p)
  ;; check for new packages (package versions)
  (package-refresh-contents)
  ;; install the missing packages
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(load-theme 'dracula t)

;; Neo Tree
(global-set-key [f8] 'neotree-toggle)
(global-set-key [f9] (lambda () (interactive) (find-file "~/.emacs")))

(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; no start up message
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;; font size
(set-face-attribute 'default nil :height 140)

;; turn tool bar off
(tool-bar-mode -1)

;; display time
(display-time-mode 1)

(setq display-time-day-and-date t)
;; remove average from mode line
(setq display-time-default-load-average nil)

;; stop custom polluting this
(setq custom-file (concat user-emacs-directory "/custom.el"))

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; recentfiles
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; smexy
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(ac-config-default)

(desktop-save-mode 1)

(add-hook 'js-mode-hook #'smartparens-mode)
(setq display-time-day-and-date t)
;; remove average from mode line
(setq display-time-default-load-average nil)

;; stop custom polluting this
(setq custom-file (concat user-emacs-directory "/custom.el"))

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; recentfiles
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; smexy
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(ac-config-default)

(desktop-save-mode 1)

(add-hook 'js-mode-hook #'smartparens-mode)


(setq display-time-day-and-date t)
;; remove average from mode line
(setq display-time-default-load-average nil)

;; stop custom polluting this
(setq custom-file (concat user-emacs-directory "/custom.el"))

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; recentfiles
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; smexy
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(ac-config-default)

(desktop-save-mode 1)

(add-hook 'js-mode-hook #'smartparens-mode)
(centaur-tabs-mode t)
(global-set-key (kbd "C-<prior>")  'centaur-tabs-backward)
(global-set-key (kbd "C-<next>") 'centaur-tabs-forward)

;;setxkbmap -layout gb -option ctrl:nocaps
