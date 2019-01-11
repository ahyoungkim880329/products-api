## GET /api/products
商品情報の一覧を表示する.

### Example

#### Request
```
GET /api/products HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 753
Content-Type: application/json; charset=utf-8
ETag: W/"ffbdcab5ba6ffc91cc40d2a47710c25c"
Referrer-Policy: strict-origin-when-cross-origin
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: ff5ba28a-c463-4ac3-aae7-3f1121903b80
X-Runtime: 0.013165
X-XSS-Protection: 1; mode=block

[
  {
    "id": 5,
    "title": "dolore",
    "description": "Nulla est dolorem. Ullam voluptatem dolorum. Praesentium laudantium et.",
    "price": 1366,
    "created_at": "2019-01-11T09:17:47.000Z",
    "updated_at": "2019-01-11T09:17:47.000Z",
    "image": {
      "url": "/uploads/product/image/5/test_image.jpg"
    }
  },
  {
    "id": 6,
    "title": "dicta",
    "description": "Neque officia nisi. Sunt at aut. Sit aut vel.",
    "price": 5628,
    "created_at": "2019-01-11T09:17:47.000Z",
    "updated_at": "2019-01-11T09:17:47.000Z",
    "image": {
      "url": "/uploads/product/image/6/test_image.jpg"
    }
  },
  {
    "id": 7,
    "title": "quos",
    "description": "Molestiae rerum velit. Quo dolorum quia. Id a voluptatem.",
    "price": 5060,
    "created_at": "2019-01-11T09:17:47.000Z",
    "updated_at": "2019-01-11T09:17:47.000Z",
    "image": {
      "url": "/uploads/product/image/7/test_image.jpg"
    }
  }
]
```

## GET /api/products/:id
特定の商品情報を表示する.

### Example

#### Request
```
GET /api/products/8 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 254
Content-Type: application/json; charset=utf-8
ETag: W/"ca0d6e12dacdf491c382978ddea1cc90"
Referrer-Policy: strict-origin-when-cross-origin
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: c7e1bd42-cb49-40fb-9a4d-11702d3c9114
X-Runtime: 0.005696
X-XSS-Protection: 1; mode=block

{
  "id": 8,
  "title": "nihil",
  "description": "Et ea perferendis. Officiis sequi doloremque. Nisi odio quasi.",
  "price": 7857,
  "created_at": "2019-01-11T09:17:47.000Z",
  "updated_at": "2019-01-11T09:17:47.000Z",
  "image": {
    "url": "/uploads/product/image/8/test_image.jpg"
  }
}
```

## POST /api/products
商品情報を1つ登録する.

### Example

#### Request
```
POST /api/products HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 14886
Content-Type: multipart/form-data; boundary=----------XnJLe9ZIbbGUYtzPQJ16u1
Host: www.example.com

multipart/form-data
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 210
Content-Type: application/json; charset=utf-8
ETag: W/"031c298e3c1c018976e1e99eddf366ee"
Referrer-Policy: strict-origin-when-cross-origin
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: 50b905d1-1f6f-437d-9733-7268a1977af7
X-Runtime: 0.010104
X-XSS-Protection: 1; mode=block

{
  "id": 20,
  "title": "Chocolate",
  "description": "Stress Relief",
  "price": 500,
  "created_at": "2019-01-11T09:17:47.000Z",
  "updated_at": "2019-01-11T09:17:47.000Z",
  "image": {
    "url": "/uploads/product/image/20/test_image.jpg"
  }
}
```

## PUT /api/products/:id
特定の商品情報を更新する.

### Example

#### Request
```
PUT /api/products/27 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 12
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

title=Coffee
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Referrer-Policy: strict-origin-when-cross-origin
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: 847be49f-d0e8-49c5-b0f3-4b0d6650d3de
X-Runtime: 0.004164
X-XSS-Protection: 1; mode=block
```

## DELETE /api/products/:id
特定の商品情報を削除する.

### Example

#### Request
```
DELETE /api/products/30 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Referrer-Policy: strict-origin-when-cross-origin
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: 6cc0f717-c194-4b9d-aa2d-894e31b87e9b
X-Runtime: 0.003204
X-XSS-Protection: 1; mode=block
```
