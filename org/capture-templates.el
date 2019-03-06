;; Capture templateg
(setq org-capture-templates
      `(("t"
         "Todo"
         entry
         (file ,(concat org-directory inbox-org))
         "* TODO %?\n  %i\n  %a")

        ("n"
         "Note to self"
         entry
         (file+headline ,(concat org-directory notes-org) "Note to Self")
         "* %?\nEntered on %U\n  %i\n  %a")

        ("g"
         "Git best-practice"
         entry
         (file+headline ,(concat org-directory notes-org) "Git best practice")
         "* %^{ITEM}%?\nNoted by %^{BY} \nEntered on %U\n  %i\n  %a")

        ("s"
         "Standup"
         entry
         (file+datetree ,(concat org-directory standup-org))
         "* %?\n%U\n")

        ("i"
         "interruption"
         entry
         (file+datetree ,(concat org-directory interruption-org))
         "* Interrupted by %?\n%U\n")

        ("j"
         "Jira ticket"
         entry
         (file ,(concat org-directory inbox-org))
         ,(concat "* TODO %\\1%?
  [[" jira-link "%^{ticket}][%\\1]]"))))


