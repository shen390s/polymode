;; Examples of polymode configuration. Choose what suits your needs and place
;; into your .emacs file.

(let ((mydir (file-name-directory (or load-file-name buffer-file-name))))
  (let ((modes-dir (concat mydir "modes")))
    (add-to-list 'load-path modes-dir)))

;;; MARKDOWN
(use-package poly-markdown
  :defer t
  :commands (poly-markdown-mode)
  :init (progn
          (add-to-list 'auto-mode-alist '("\\.md$" . poly-markdown-mode))))

;; ;;; ORG
;; ;; org is not working presently
(use-package poly-org
  :defer t
  :commands (poly-org-mode)
  :init (progn
          (add-to-list 'auto-mode-alist '("\\.org$" . poly-org-mode))))

;; ;;; R related modes
(use-package poly-R
  :defer t
  :commands (poly-noweb+r-mode poly-markdown+r-mode
                               poly-rapport-mode
                               poly-html+r-mode
                               poly-brew+r-mode
                               poly-r+c++-mode
                               poly-c++r-mode)
  :init (progn
          (add-to-list 'auto-mode-alist '("\\.Snw$" . poly-noweb+r-mode))
          (add-to-list 'auto-mode-alist '("\\.Rnw$" . poly-noweb+r-mode))
          (add-to-list 'auto-mode-alist '("\\.Rmd$" . poly-markdown+r-mode))
          (add-to-list 'auto-mode-alist '("\\.rapport$" . poly-rapport-mode))
          (add-to-list 'auto-mode-alist '("\\.Rhtml$" . poly-html+r-mode))
          (add-to-list 'auto-mode-alist '("\\.Rbrew$" . poly-brew+r-mode))
          (add-to-list 'auto-mode-alist '("\\.Rcpp$" . poly-r+c++-mode))
          (add-to-list 'auto-mode-alist '("\\.cppR$" . poly-c++r-mode))))

;; ;;; ERB modes
(use-package poly-erb
  :defer t
  :commands (poly-javascript+erb-mode poly-coffee+erb-mode poly-html+erb-mode)
  :init (progn
          (add-to-list 'auto-mode-alist '("\\.js.erb$" . poly-javascript+erb-mode))
          (add-to-list 'auto-mode-alist '("\\.coffee.erb$" . poly-coffee+erb-mode))
          (add-to-list 'auto-mode-alist '("\\.html.erb$" . poly-html+erb-mode))))

;; ;;; Slim mode
(use-package poly-slim
  :defer t
  :commands (poly-slim-mode)
  :init (progn
          (add-to-list 'auto-mode-alist '("\\.slim$" . poly-slim-mode))))

(defalias 'dot-mode 'graphviz-dot-mode)
(defalias 'r-mode 'ess-r-mode)

(use-package ob-tikz
  :defer t
  :commands (tikz-mode))

(provide 'polymode-configuration)
