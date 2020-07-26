#' Task end notification
#'
#' This function sends a notification to your LINE account via RStudio interface.
#'
#' @param LINE_API_TOKEN Your valid LINE Notify api token. Recomennded to save .Renviron file.
#' @param msg Message to show. 1,000 characters max. Defaults to "Task is finished."
#'
#' @author Koki Ando \email{koki.25.ando@gmail.com}
#'
#' @seealso \url{https://notify-bot.line.me/doc/en/}
#'
#' @import httr
#'
#' @example
#' \dontrun{
#'   line_task_notify(msg="Scraping task is finished")
#' }
#'
#' @export

line_task_notify <- function(LINE_API_TOKEN = NULL, msg = "Task is finished."){

  if (is.null(LINE_API_TOKEN)){
    LINE_API_TOKEN <- Sys.getenv("LINE_API_TOKEN")
  }

  stopifnot(
    is.character(LINE_API_TOKEN),
    length(LINE_API_TOKEN) != 0
  )

  if (nchar(LINE_API_TOKEN) <= 1){
    warn_msg <- "Line Notify API has not been set successfully. \n
    Please check your LINE_API_TOKEN aurgument or .Renvirion file to set api token."
    stop(warn_msg)
  }

  url <- "https://notify-api.line.me/api/notify"
  auth <- paste0("Bearer ", LINE_API_TOKEN)
  httr::POST(url,
             httr::add_headers(Authorization = auth),
             body = list(message = msg),
             encode = "multipart")

}
