CREATE TABLE IF NOT EXISTS reports (
   report_id SERIAL PRIMARY KEY,
   creation_date DATE default current_date,
   report_info VARCHAR(255),
   model_id INT
  );

INSERT INTO reports (creation_date, report_info, model_id)
VALUES
('01/07/2020','d41332da-2262-4a7b-bd72-5d933d49448d',1453),
('01/11/2020','f9763f74-d166-4227-937f-1ae0079eece0',65),
('01/17/2020','a747ded3-3440-4a53-9bc0-421e455cd3ae',111),
('01/24/2020','b8e0a543-8fef-4b9b-bc68-6cc3ab60b508',999),
('01/30/2020','dd24a8c8-3090-4771-a0b4-68b1ccad845b',777),
('02/12/2020','c21a3183-565d-40b6-a6da-875f94cf4d22',999),
('02/22/2020','8ba02948-a18f-415d-96bd-929d66aec6cb',888),
('02/25/2020','1460bebd-301b-4f8c-bdfd-ca416a07b907',65),
('02/29/2020','582d320b-701e-4459-85f4-6183aff1313b',111),
('03/05/2020','a0b34e22-33bd-4694-91ba-1e4b0ee85c11',78),
('03/18/2020','632c793f-1917-4d3f-aae9-b14b9ffe6b53',144),
('03/28/2020','b2f834ef-6a32-488d-9793-d1a41444f7a7',111),
('04/04/2020','297e044e-9bc3-4682-8693-a21568a666f4',1453),
('04/08/2020','d531d5d6-6eee-4fe0-8636-d87518aa8894',1453),
('04/18/2020','addd1be1-d57a-46fc-98fa-ce33c803c223',144),
('04/28/2020','c0029a3c-443c-4419-8854-4a7a9b70a3d5',1089),
('05/11/2020','1a622bf4-4031-41e3-9141-94b686b4f4fa',1337),
('05/14/2020','d8db916d-6cf9-4902-8e9e-afb298f8e439',777),
('05/24/2020','9b4cf0b8-ce63-4615-8000-7780bd147094',1089),
('05/31/2020','0cff96f2-1369-4c70-b551-8b7eed259943',999),
('06/04/2020','152ba752-0fc5-4be7-be80-37af623a458a',78),
('06/14/2020','f0655b4f-3604-4062-be0d-e8cfa85045d5',111),
('06/27/2020','d07c866b-beb1-4047-b26f-3d68417c1a3e',144),
('07/10/2020','2796d124-7480-49d1-9ddd-474e0f6d274b',1089),
('07/14/2020','43a9ac1c-795d-4f0e-bb2e-e324ad558b45',1337),
('07/21/2020','3d398178-c7ce-4750-be2d-e1a161177da3',1089),
('07/26/2020','ee54aec2-8213-4549-9487-edf7f7b1a355',65),
('08/01/2020','f1baaf2a-ac98-4f78-ba16-6aa228adc45b',1089),
('08/11/2020','e4bda922-72bb-4fd1-a4f1-e34f89bc44ff',1453),
('08/18/2020','91ef27c4-0135-4d4d-ac21-269f64569d0c',777),
('08/24/2020','d7b892bc-af5e-4548-a6fa-2d997e9d9891',888),
('08/31/2020','edcbf65b-6a37-4910-a364-96d641db0936',144),
('09/05/2020','b1c37768-9b21-46c7-92d7-4b84d7046a6e',144),
('09/11/2020','e89c1b90-b6ea-482f-b668-5f48c16daf11',144),
('09/24/2020','7fad5afa-9fe4-4844-a892-bdfa8b0af067',777),
('09/27/2020','49444b8e-50a0-4b6d-8fc1-a09fca4408a2',78),
('10/02/2020','ad93f67e-8547-4f13-b49d-a369af8e48d3',111),
('10/06/2020','5186c3b3-753b-4cd8-94d0-d7a104bd3c35',1453),
('10/13/2020','2d03c4b2-9a2e-4c92-b0c9-6953159237e3',111),
('10/23/2020','d76a7319-54ff-42b3-96d8-bc55252e496d',78),
('10/29/2020','3a5a7463-10c5-4f80-a560-a6853a8fbe72',777),
('11/11/2020','62bb3969-395d-4ad7-8d3a-73d81cd3b538',1089),
('11/14/2020','c9a2fae8-c321-4e0d-b4bb-049c0edaf770',777),
('11/17/2020','ca625669-5b83-4bbf-a427-c7cb764294e2',111),
('11/27/2020','f8c225ec-2696-418e-bc27-260e02966e67',1337),
('12/03/2020','c3537ba8-20dd-4bb6-9216-8b2335776603',999),
('12/13/2020','021db6d4-c937-42b6-aec4-d51705eb73d9',65),
('12/18/2020','43695084-da0c-4982-ab5d-81e0b8cbe325',1453),
('12/24/2020','7ba65a4c-8f1b-44f6-a0c7-60f9d3d9943f',777),
('01/03/2021','db655da9-7b52-428c-8bfd-992f0efb0b8b',78),
('01/10/2021','937ad7b1-8265-42b0-b121-f032d8122168',1337),
('01/20/2021','9a2ac6d8-a818-4bbf-9194-7c32b4a887e1',111),
('01/23/2021','9b8c5535-5db5-426f-84af-2872976670ad',777),
('02/05/2021','8e3935e8-1fc8-4fa3-998f-e2c81f6d3c70',1337),
('02/10/2021','12284af1-6106-4946-90f0-c4c3f9788253',111),
('02/13/2021','27130d84-ee56-4ff5-be44-53738742c208',1089),
('02/20/2021','182d31a2-ced5-4ba3-a486-f4fce5539792',111),
('02/25/2021','f5fa63bc-7cff-48b8-b27b-6560cf1525de',777),
('03/10/2021','eaacae3c-892f-4313-af36-91b433c57c53',1089),
('03/20/2021','bf4c0b11-f81f-43ed-b5e3-21c916bb7e9b',144),
('03/30/2021','965a058c-3c8d-42cd-90dd-9e4898ac9a0a',1089),
('04/02/2021','a87517ce-535f-4977-98f8-57601f56bee7',999),
('04/06/2021','5e47a7b9-fdac-459b-8e8e-39e4c775d89d',1337),
('04/13/2021','1beeacbf-442a-4d15-8c58-85506a91d73d',111),
('04/17/2021','68898167-649f-4a51-9b3f-2c9172f38fd9',777),
('04/20/2021','9b69aecf-9697-47ef-9184-26e74ef59aa4',888),
('04/24/2021','85fdc382-998a-45ca-90c2-02618493c218',78),
('05/01/2021','6e54d90b-85b5-4486-a962-4da4cdc77b39',111),
('05/06/2021','32319bf4-4dda-4a91-8020-5815aea4bfed',888),
('05/11/2021','89d3dcd3-9349-4336-ba45-a25cc131eb9d',65),
('05/17/2021','3d9368ed-4412-4a2f-8da1-c69cac1e1928',888),
('05/27/2021','5bb6eff2-223e-412e-b236-36b62d945b0f',888),
('06/09/2021','b3764317-c85a-4472-85e5-c452a3a0e004',144),
('06/22/2021','11d78e06-1bb6-49bd-9160-db976064c839',111),
('06/26/2021','b3d9f796-cdec-4ac5-97dd-c6ddf7ffee91',888),
('07/02/2021','67b26f34-09f1-4df3-a16f-f5eaad07f22f',65),
('07/12/2021','201b63f2-c7d0-4d87-aae3-e3b489850229',999),
('07/17/2021','35ccdbbb-78da-4849-96fa-d46592f4cc4b',1453),
('07/22/2021','47d8eecf-1424-4de8-bfa6-05638f99d002',65),
('08/04/2021','0460b231-9b65-4db8-8041-01c66705309c',1337),
('08/09/2021','41cb4900-2602-4e80-ad58-0dca45f396bb',144),
('08/16/2021','f6f18590-4dbc-46f7-a3be-b0ef9edb1a40',888),
('08/23/2021','e35b0bfe-ee53-4437-98a3-2d1ac9c2ff43',1089),
('08/26/2021','1d24c636-0a51-47f8-99cd-7624de12b1a4',1337),
('09/01/2021','e27173cf-3bda-48a9-8a7e-73201fbc4f33',1089),
('09/04/2021','cbb3f6aa-2f52-4b49-953b-5bdbed9e825c',888),
('09/08/2021','cbe339a9-46cf-4fd6-87bb-16514f4ebfec',1089),
('09/15/2021','1e7066ba-2a50-4164-ad2d-71f67e7ad57c',65),
('09/18/2021','b548fd3a-e6c9-4466-b9f9-dae6807bc581',144),
('09/22/2021','11bb312f-2762-4802-9690-885727966a16',888),
('10/02/2021','1370cad6-5bf2-43f0-820d-a154a9c3ca9b',1453),
('10/05/2021','b930a3cd-edf4-448a-ae7c-d5dafbadce09',144),
('10/08/2021','d50c0a4d-c008-475b-988e-0e26c1aecdd4',111),
('10/11/2021','fc3bd074-6fd4-49e2-ba79-2fa97ed961e5',78),
('10/21/2021','537a2038-539d-4576-8157-1bbfaa6df81b',777),
('11/03/2021','06e66200-7b07-4b8e-a998-cf0ab367f567',144),
('11/06/2021','45ab4ff7-bc34-457c-a558-f59f798383ea',1089),
('11/19/2021','aadb6b16-0e17-4cfc-a584-6d11129e75fd',144),
('11/29/2021','54852110-789c-4e9c-ac52-948f1b574eaf',1453),
('12/09/2021','67168912-3996-4609-b997-de0afa073c74',144),
('12/13/2021','677a9c8d-aa6c-48bc-a5da-2221b21e91b4',999),
('12/20/2021','07ee05fa-2b9b-4a4b-bc4a-ed52aa825113',888),
('12/24/2021','74c01d7b-4d34-4450-8f67-b13d6dcf39a0',144),
('01/06/2022','44972ca2-e9c3-4240-86cc-f233cbc3bf8f',65),
('01/19/2022','4607914a-6fe4-4759-95c0-f73cb73910f3',1453),
('01/23/2022','0500ad8c-9429-47b8-ba0a-cc613bf8711d',65),
('01/26/2022','b8e8fe63-d524-4b19-a82f-9ec1ee256789',1453),
('02/08/2022','740e042a-2541-4bff-bd95-c5111d0be0d6',78),
('02/12/2022','074888f0-bf2f-4349-8948-40b5938a1772',1089),
('02/17/2022','c19afdcf-1903-4e41-9baf-ff050567fa93',111),
('02/20/2022','4f8ca686-f8ab-495d-b421-4715d43a399d',144),
('03/05/2022','6eb4d3ca-b939-4ae2-bfcf-2f0221501010',999),
('03/08/2022','8b7f5064-7ff3-47ff-98d2-490ce2fb8958',1089),
('03/18/2022','e8ce6706-f1b5-424d-a243-ed182de1b45a',999),
('03/21/2022','10bfe965-864c-4d08-b0c6-54ec443fa11d',1337),
('03/24/2022','444aceeb-50e5-458e-bc00-9e03cf6f3ac5',78),
('04/03/2022','a5d40191-9f55-4743-bc84-8bdc247d87ac',65),
('04/16/2022','39afa192-2c9d-41e8-933a-6416055ae572',1337),
('04/19/2022','efcfaea7-0f47-41fc-8986-0c0f16bdcb0f',1337),
('04/23/2022','896d25ab-1bb4-4a01-addd-ffe5b616b8ec',777),
('04/26/2022','c3e18c91-7e83-4100-bff1-e05c6a8621cb',65),
('04/30/2022','ee1b2839-baaa-402f-a05a-a06c2c7c0e82',65),
('05/13/2022','21d60cd3-bb71-4656-ae3f-bd85349bb646',999),
('05/18/2022','5f29e45d-fc49-4a73-b783-b7f71bb6174d',999),
('05/23/2022','06098aed-ac9b-4739-a367-826aaa01a768',1089),
('05/30/2022','82d938de-5cd6-4262-b8ee-9d5728075c7d',144),
('06/09/2022','9a6e9731-79a5-4f1b-a6db-3259fb915aac',1089),
('06/13/2022','04cba785-8c75-4d60-9668-1dc6e784be9a',65),
('06/18/2022','772b3342-25af-403e-8cc0-ce997e3eb790',111),
('06/28/2022','fe01c733-fb56-4fd2-af0e-9c8be23d7038',78),
('07/11/2022','29986cc8-2e53-4726-9c9c-4209a5ba1bae',1453),
('07/14/2022','a1206069-776a-4160-86db-72213293ec07',777),
('07/17/2022','1d23a2f9-1d16-4b03-a53d-baa6ee0cfab3',111),
('07/22/2022','a19080d8-3a86-47c5-953a-6136f8bd8930',1337),
('07/29/2022','146079ef-3758-4585-9bb1-32228fe556f0',144),
('08/01/2022','13bd5113-6d54-4329-8bdc-b60b2e2607ab',888),
('08/07/2022','909c305d-6500-45a8-aadf-435547231159',144),
('08/20/2022','7f15f484-659b-4dfe-8868-e871d7133d6b',999),
('08/27/2022','5dd43329-7de8-4b94-930c-b20a472eff07',1337),
('08/30/2022','96b6c59e-3584-433d-955c-94cc9c15024f',78),
('09/06/2022','6128e0b8-687c-4516-b222-18f221c6dfb4',999),
('09/19/2022','cced106c-ee62-48c8-aa0f-762ca09f9b1c',1089),
('09/22/2022','392fb09c-91d2-40ad-ba9f-552305e77993',999),
('10/02/2022','de6cc207-5531-4803-b73e-324940b8f38e',1453),
('10/06/2022','827e9f9c-9efe-4da7-a8d1-10bba8362b8b',888),
('10/19/2022','6f954280-30d6-4c84-992b-679abad38e2d',1337),
('10/25/2022','2d9be83e-6677-46a1-8683-873840170511',1337),
('10/29/2022','697e0e2b-baca-4c5e-b66a-9b56bc7de990',111),
('11/05/2022','00899bab-15a6-47e8-b00d-97a6113cadc0',78),
('11/12/2022','5328dcaf-8669-4d7b-b001-d6b77131b030',78),
('11/17/2022','6bb6f6f2-bf0a-4f55-b6fc-8b5cb8e18a50',888),
('11/21/2022','bf0e0a1b-3b62-41e6-9e97-b0504ed49a57',999),
('11/28/2022','7f8161d6-11b6-4e0a-9b52-5a63dfab9c13',144),
('12/04/2022','c289e5f8-7345-4394-b1df-0458c899c15b',999),
('12/14/2022','6d534f01-4c15-4694-9d9e-485596e6e424',144),
('12/24/2022','270b2ef8-9775-4643-8c31-0edc178a8a06',1453),
('01/03/2023','dad15311-1ea4-469b-863f-4729885683dd',78),
('01/09/2023','27db5e7b-3bde-4754-bf16-122f083401af',999),
('01/14/2023','c9c2db87-ff1c-42f0-87a1-71f6730c1766',78),
('01/24/2023','cb007c69-f067-4ce6-b41d-889bbef17124',888),
('02/03/2023','81b3c671-52c6-4664-855e-b6ff6a23b5d8',888),
('02/06/2023','8f627fe4-e877-44ce-9926-7d140ec274ef',65),
('02/11/2023','21ba6874-05c7-40c6-9ecd-f0e5a93248c2',65),
('02/24/2023','fa5a0dd7-aaf1-481b-8849-ec7a602b5014',1089),
('03/06/2023','5b168227-a6e8-45b6-b7f8-fbe0c1ecaf77',144),
('03/11/2023','099ff844-4725-4e40-9854-4ef0acb73650',999),
('03/14/2023','562f1702-ffcd-4173-b953-961d8f846872',999),
('03/21/2023','79571944-b7c0-40c4-9ec0-1e3c8a70712f',78),
('03/28/2023','1a91e990-d6c5-4049-9109-e0816469d23a',111),
('04/03/2023','fbcf1606-459f-439d-b5fd-baced4e13fc4',777),
('04/09/2023','9117de74-d741-4d46-a8a5-634dedbaa70a',777),
('04/16/2023','a6c99701-6ff0-4ed0-a571-82eb19d5d241',111),
('04/22/2023','a63da167-b7ba-4f2a-a0a2-3d1f6a7b46c4',65),
('04/26/2023','a3ee423c-fa73-4bee-91d8-2209974ad752',999),
('05/02/2023','48c7e119-4481-46c5-af93-d788c10aa4f4',65),
('05/07/2023','93b533ac-469b-4214-86dd-f6f54cc564d6',1453),
('05/11/2023','395d0041-fa2a-43f4-b76b-0a4da3195ed7',65),
('05/24/2023','d67623a7-b548-4564-b03e-23312a22b846',78),
('05/29/2023','2e377330-123f-4897-804d-32168ac06c50',999),
('06/02/2023','d22b0769-f9a7-4137-9f3b-ccee30094dbe',777),
('06/09/2023','7ea82832-4f69-4010-bc02-6f526dd1f961',999),
('06/19/2023','ac7a5180-2a03-4c35-8863-ab6c1933afc3',111),
('06/22/2023','38156ee6-2d4a-4e98-85f2-dfd28e2d82c5',65),
('07/02/2023','3f1292c5-1a5d-4cf3-9bae-cc26b5996940',1337);


