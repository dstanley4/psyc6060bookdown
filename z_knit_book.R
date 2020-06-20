
# Reminder: restart R first

bookdown::render_book("index.Rmd", output_format = "bookdown::pdf_book")

# bookdown::render_book("index.Rmd", "bookdown::gitbook")
# bookdown::serve_book(dir = ".", output_dir = "_book", preview = TRUE, in_session = TRUE, quiet = FALSE)
bookdown::serve_book(dir = ".", output_dir = "_book", preview = TRUE, in_session = TRUE, quiet = FALSE)

# To stop the server, run servr::daemon_stop(1) or restart your R session
