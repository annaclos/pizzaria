-- CreateTable
CREATE TABLE "usuario" (
    "Id" SERIAL NOT NULL,
    "firstName" TEXT NOT NULL,
    "lastName" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "telefone" TEXT NOT NULL,

    CONSTRAINT "usuario_pkey" PRIMARY KEY ("Id")
);

-- CreateTable
CREATE TABLE "endereco" (
    "Id" SERIAL NOT NULL,
    "cep" TEXT NOT NULL,
    "endereco" TEXT NOT NULL,
    "bairro" TEXT NOT NULL,
    "complemento" TEXT NOT NULL,
    "numero" INTEGER NOT NULL,
    "cidade" TEXT NOT NULL,
    "estado" TEXT NOT NULL,
    "observacao" TEXT NOT NULL,
    "usuarioId" INTEGER,

    CONSTRAINT "endereco_pkey" PRIMARY KEY ("Id")
);

-- CreateTable
CREATE TABLE "produto" (
    "Id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,
    "preco" TEXT NOT NULL,
    "imagem" TEXT NOT NULL,
    "quantidade" INTEGER NOT NULL,
    "ativo" BOOLEAN NOT NULL,

    CONSTRAINT "produto_pkey" PRIMARY KEY ("Id")
);

-- CreateIndex
CREATE UNIQUE INDEX "usuario_email_key" ON "usuario"("email");

-- CreateIndex
CREATE UNIQUE INDEX "usuario_telefone_key" ON "usuario"("telefone");

-- AddForeignKey
ALTER TABLE "endereco" ADD CONSTRAINT "endereco_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "usuario"("Id") ON DELETE SET NULL ON UPDATE CASCADE;
