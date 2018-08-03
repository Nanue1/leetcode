(setq org-publish-project-alist
   '(

      ("leetcode-org"
         :base-directory "~/github/leetcode"
         :base-extension "org"
         :publishing-directory "~/github/output_leetcode"
         :section-numbers nil
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :auto-sitemap t
         :sitemap-filename "sitemap.org"
         :sitemap-title "Sitemap"
         :auto-preamble t
         :author nil
         :creator-info nil
         :auto-postamble nil)
      ("leetcode-static"
         :base-directory "~/github/leetcode"
         :base-extension "html\\|css\\|js\\|ico\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|java\\|py\\|zip\\|arff\\|dat\\|cpp\\|xls\\|otf\\|woff"
         :publishing-directory "~/github/output_leetcode"
         :recursive t
         :publishing-function org-publish-attachment)
      ("leetcode" :components ("leetcode-org" "leetcode-static"))
))

(setq org-export-copy-to-kill-ring nil)
(setq org-export-with-sub-superscripts nil)

(setq org-html-postamble nil)
(setq org-html-preamble "<a href=\"index.html\">Home</a>")


;; (defvar path-output-leetcode "~/github/output_leetcode")
;; ;;自动更新blog
;; (defun update-leetcode()
;;   (interactive)
;;   (org-publish "leetcode")
;;   (shell-command (concat "cd " path-output-leetcode" && git add -A && git ci -m 'update blog' && git push")))
;; (global-set-key (kbd "<f9>") 'update-leetcode)