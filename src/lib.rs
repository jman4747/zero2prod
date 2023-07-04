use actix_web::{web, App, HttpResponse, HttpServer, Responder};

pub async fn run() -> std::io::Result<()> {
    HttpServer::new(|| {
        App::new()
            .route("/", web::get().to(root))
            .route("/heath", web::get().to(health_check))
    })
    .bind(("127.0.0.1", 8080))?
    .run()
    .await
}

async fn health_check() -> impl Responder {
    HttpResponse::Ok()
}

async fn root() -> impl Responder {
    HttpResponse::ServiceUnavailable()
}
