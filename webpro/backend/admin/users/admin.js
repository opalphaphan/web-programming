const express=require('express');
const app=express();

const dotenv = require("dotenv")
dotenv.config();

const port=3000
const router = express.Router();


const bodyParser = require('body-parser');
app.use(bodyParser.json());

const sql = require('mysql2'); 
app.use(express.json());

var connectDB = sql.createConnection({
  host : process.env.MYSQL_HOST, 
  user : process.env.MYSQL_USERNAME, 
  password : process.env.MYSQL_PASSWORD, 
  database : process.env.MYSQL_DATABASE
});

connectDB.connect(function(err){
  if(err) throw err;
  console.log(`Connected DB: ${process.env.MYSQL_DATABASE}`);
});


router.get('/adminINFORMATION/:id', function (req, res) {
    let user_id = req.params.id;
    connectDB.query('SELECT * FROM Admin_Info WHERE user_id = ?', [user_id], function (error, results) {
      if (error) throw error;
      return res.send({ error: false, data: results, message: 'Admin information.' });
    });
  });

router.get('/adminINFORMATION', function (req, res) {
    connectDB.query('SELECT * FROM Admin_Info', function (error, results) {
      if (error) throw error;
      return res.send({ error: false, data: results, message: 'Admin information list.' });
    });
  });


app.use('/', router);

router.post('/insertINFORMATION', function(req,res){
    let Admin = req.body.Admin;
    console.log(Admin);
    if (!Admin) {
        return res.status(400).send({ error: true, message: 'Please provide ADMIN information' });
    }
    // res.render('add_user', { admin: Admin });
    connectDB.query("INSERT INTO Admin_Info SET ? ", Admin, function (error, results) {
        if (error) throw error;
        return res.send({error: false, data: results.affectedRows, message: 'Created successfully.'});
    });
});

router.put('/updateINFORMATION', function (req, res) {
    let user_id = req.body.user_id;
    let Admin = req.body.Admin;

    if (!user_id || !Admin) {
    return res.status(400).send({ error: ADMIN, message: "Please provide ADMIN information" }); 
    }

    connectDB.query("UPDATE Admin_Info SET ? WHERE user_id = ?", [Admin, user_id], function (error, results) {
    if (error) throw error;
    return res.send({error: false, data: results.affectedRows, message: 'Updated successfully.'})
    });
});


router.delete('/deleteINFORMATION', function (req, res) {
    let user_id  = req.body.user_id ;

    if (!user_id) {
    return res.status(400).send({ error: true, message: 'Please provide user_id' });
    }
    
    connectDB.query('DELETE FROM Admin_Info WHERE user_id = ?', [user_id], function (error, results) {
    if (error) throw error;
    return res.send({ error: false, data: results.affectedRows, message: 'Deleted successfully.' });
    }); 
});

// insert a new product into the database
router.post('/insertProduct', function(req, res) {
  const { name, price, description } = req.body;
  pool.query('INSERT INTO products SET ?', { name, price, description }, (error, results) => {
    if (error) throw error;
    res.send('Product added successfully.');
  });
});

// update an existing product in the database
router.put('/updateProduct', function(req, res) {
  const { pid, name, price, description } = req.body;
  pool.query('UPDATE products SET name = ?, price = ?, description = ? WHERE id = ?', [name, price, description, pid], (error, results) => {
    if (error) throw error;
    res.send('Product updated successfully.');
  });
});

// delete a product from the database
router.delete('/deleteProduct', function(req, res) {
  const { pid } = req.body;
  pool.query('DELETE FROM products WHERE id = ?', [pid], (error, results) => {
    if (error) throw error;
    res.send('Product deleted successfully.');
  });
});

app.listen(port, function(){
    console.log(`Server listening at Port ${port}`);
});









