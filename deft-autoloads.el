;;; deft-autoloads.el --- autoloads for Deft

;;; Commentary:
;; Run "make autoloads" to regenerate this file.

;;; Code:

;;;### (autoloads nil "deft" "deft.el" (22982 37332 0 0))
;;; Generated autoloads from deft.el

(autoload 'deft-title-from-file-content "deft" "\
Extract a title from FILE content.
Return nil on failure.

\(fn FILE)" nil nil)

(autoload 'deft-file-by-basename "deft" "\
Resolve a Deft note NAME to a full pathname.
NAME is a non-directory filename, with extension.
Resolve it to the path of a file under a `deft-path'
directory, if such a note file does exist.
If multiple such files exist, return one of them.
If none exist, return nil.

\(fn NAME)" nil nil)

(autoload 'deft-make-basename-list "deft" "\
Return the names of all Deft notes.
Search all existing `deft-path' directories.
The result list is sorted by the `string-lessp' relation.
It may contain duplicates.

\(fn)" nil nil)

(autoload 'deft-chomp-nullify "deft" "\
Return string STR if non-empty, otherwise return nil.
Optionally, use function TRIM to trim any result string.

\(fn STR &optional TRIM)" nil nil)

(autoload 'deft-register-file "deft" "\
Register FILE as storing a Deft note.

\(fn FILE)" nil nil)

(autoload 'deft-open-file "deft" "\
Open Deft note FILE in a new buffer.

\(fn FILE)" nil nil)

(autoload 'deft-save-buffer "deft" "\
Save the current buffer as a Deft note.
The prefix argument PFX is passed to `save-buffer'.
Set up a hook for refreshing Deft state on save.

\(fn PFX)" t nil)

(autoload 'deft-find-file "deft" "\
Find a Deft FILE interactively using the minibuffer.

\(fn FILE)" t nil)

(autoload 'deft-new-file-named "deft" "\
Create a new file, prompting for a title.
The prefix argument PFX is as for `deft-new-file'.
Query for a TITLE when invoked as a command.

\(fn PFX TITLE)" t nil)

(autoload 'deft-new-file "deft" "\
Create a new file quickly.
Create it with an automatically generated name, one based
on the `deft-filter-regexp' filter string if it is non-nil.
With a prefix argument PFX, offer a choice of Deft
directories, when `deft-path' has more than one of them.
With two prefix arguments, also offer a choice of filename
extensions when `deft-secondary-extensions' is non-empty.

\(fn PFX)" t nil)

(autoload 'deft-delete-file "deft" "\
Delete the selected or current Deft note file.
Prompt before proceeding.
With a PREFIX argument, also kill the deleted file's buffer, if any.

\(fn PREFIX)" t nil)

(autoload 'deft-move-into-subdir "deft" "\
Move the file at point into a subdirectory of the same name.
To nest more than one level (which is allowed but perhaps atypical),
invoke with a prefix argument PFX.

\(fn PFX)" t nil)

(autoload 'deft-rename-file "deft" "\
Rename the selected or current Deft note file.
Defaults to a content-derived file name (rather than the old one)
if called with a prefix argument PFX.

\(fn PFX)" t nil)

(autoload 'deft-move-file "deft" "\
Move the selected file under selected Deft root.
If it resides in a subdirectory, move the entire
directory, but only if given a prefix argument PFX.

\(fn PFX)" t nil)

(autoload 'deft-archive-file "deft" "\
Archive the selected Deft note file.
Archive it under `deft-archive-directory', under its Deft root directory.
If it resides in a subdirectory, archive the entire directory,
but only with a prefix argument PFX.

\(fn PFX)" t nil)

(autoload 'deft-refresh "deft" "\
Refresh or reset Deft state.
Refresh Deft state so that filesystem changes get noticed.
With a PREFIX argument, reset state, so that caches and
queries and such are also cleared.
Invoke this command manually if Deft files change outside of
`deft-mode', as such changes are not detected automatically.

\(fn PREFIX)" t nil)

(autoload 'deft "deft" "\
Switch to `deft-buffer', creating it if not yet created.
With a PREFIX argument, start Deft with fresh state. With two
PREFIX arguments, also interactively query for an initial choice of
`deft-directory', except where Deft has already been initialized.

\(fn &optional PREFIX)" t nil)

(autoload 'deft-read-extension "deft" "\
Read a Deft filename extension, interactively.
The default choice is `deft-extension', but any of the
`deft-secondary-extensions' are also available as choices.

\(fn)" nil nil)

(autoload 'deft-select-directory "deft" "\
Select a Deft directory, possibly interactively.
If DIRS is non-nil, select from among those directories;
otherwise select from `deft-directories'.
Use the specified PROMPT in querying, if given.
Return the selected directory, or error out.

\(fn &optional DIRS PROMPT)" nil nil)

(autoload 'deft-chdir "deft" "\
Change `deft-directory' according to interactive selection.
Query for a directory with `deft-select-directory'.

\(fn)" t nil)

(autoload 'deft-open-file-by-basename "deft" "\
Open a Deft file named FILENAME.
FILENAME is a non-directory filename, with an extension
\(it is not necessarily unique).

\(fn FILENAME)" nil nil)

(autoload 'deft-open-query "deft" "\
Open Deft with an interactively read Xapian search query.
Create a `deft-buffer' if one does not yet exist,
otherwise merely switch to the existing Deft buffer.

\(fn)" t nil)

(autoload 'deft-lucky-find-file "deft" "\
Open the highest-ranked note matching a search query.
Read the query interactively, accounting for `deft-xapian-query-history'.
Open the file directly, without switching to any `deft-buffer'.

\(fn)" t nil)

;;;***

(provide 'deft-autoloads)

;;; deft-autoloads.el ends here
