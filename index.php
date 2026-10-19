<html>
    <head>
        <title>Form Login SPP</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        
        <style>
            /* 1. Mengubah background menjadi gradasi modern */
            body {
                background: linear-gradient(135deg, #74ebd5 0%, #9fa8da 100%);
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                font-family: 'Poppins', sans-serif;
            }

            /* 2. Mengubah fieldset kotak kaku menjadi card modern melengkung */
            .login-card {
                background: rgba(255, 255, 255, 0.9);
                border: none;
                border-radius: 20px;
                box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
                width: 350px;
                padding: 40px 30px;
                box-sizing: border-box;
            }
            .btn-cek {
                display: block;
                text-align: center;
                width: 100%;
                margin-top: 15px; /* Memberikan jarak dari tombol LOGIN */
                text-decoration: none; /* Menghilangkan garis bawah jika tidak diperlukan */
            }

            /* 3. Layout judul dibuat lebih elegan */
            .login-header {
                text-align: center;
                margin-bottom: 30px;
            }

            .login-header h1 {
                font-size: 24px;
                color: #333;
                margin: 0;
            }

            .login-header h1 span {
                color: #4f46e5;
                font-weight: bold;
            }

            /* 4. Layout Foto Profil dibuat bulat rapi di tengah */
            .avatar-container {
                display: flex;
                justify-content: center;
                margin-bottom: 20px;
            }

            .avatar-container img {
                border-radius: 50%;
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
                object-fit: cover;
                border: 3px solid #fff;
            }

            /* 5. Style inputbox dengan posisi absolute untuk icon */
            .input-group {
                margin-bottom: 18px;
                position: relative; /* Menahan icon agar tetap di dalam kotak input */
            }

            /* Mengatur posisi icon agar presisi di kiri */
            .input-group i {
                position: absolute;
                left: 15px;
                top: 50%;
                transform: translateY(-50%);
                color: #aaa;
                font-size: 16px;
                transition: color 0.3s ease;
            }

            /* Menambahkan padding-left agar teks ketikan tidak menimpa icon */
            .input-group input {
                width: 100%;
                height: 48px;
                padding: 0 15px 0 42px; 
                border: 1px solid #e0e0e0;
                border-radius: 10px;
                font-size: 15px;
                background-color: #f9f9f9;
                box-sizing: border-box;
                transition: all 0.3s ease;
            }

            /* Efek warna icon ikut berubah saat kolom input diklik */
            .input-group input:focus {
                outline: none;
                border-color: #4f46e5;
                background-color: #fff;
                box-shadow: 0 0 0 3px rgba(79, 70, 229, 0.1);
            }

            .input-group input:focus + i {
                color: #4f46e5;
            }

            /* 6. Mengubah tombol login menjadi full-width button modern */
            .btn-login {
                width: 100%;
                height: 48px;
                background: linear-gradient(135deg, #4f46e5 0%, #3730a3 100%);
                color: white;
                border: none;
                border-radius: 10px;
                font-size: 16px;
                font-weight: 600;
                cursor: pointer;
                transition: opacity 0.2s ease;
                margin-top: 10px;
            }

            .btn-login:hover {
                opacity: 0.9;
            }

            /* Style notifikasi error PHP */
            .alert {
                background-color: #fee2e2;
                color: #ef4444;
                padding: 10px;
                border-radius: 8px;
                font-size: 13px;
                text-align: center;
                margin-bottom: 15px;
                border: 1px solid #fca5a5;
            }
        </style>
    </head>
    <body>

        <div class="login-card">
            
            <div class="avatar-container">
                <img src="profile.png" width="80" height="80" alt="Profile">
            </div>

            <div class="login-header">
                <h1><span>SPP</span> ONLINE</h1>
                <p style="color: #666; margin: 5px 0 0 0; font-size: 14px;">Silahkan masuk ke akun Anda</p>
            </div>

            <?php
            if(isset($_GET['pesan'])){
                if($_GET['pesan'] == "gagal"){
                    echo "<div class='alert'>Username atau Password salah!</div>";
                }
            }
            ?>

            <form action="login_validasi.php" method="post">
                <div class="input-group">
                    <input name="username" type="text" placeholder="Username" required>
                    <i class="fa-solid fa-user"></i>
                </div>
                
                <div class="input-group">
                    <input name="password" type="password" placeholder="Password" required>
                    <i class="fa-solid fa-lock"></i>
                </div>
                
                <button type="submit" name="login" class="btn-login">LOGIN</button>
                <td colspan="2">
                    <a href="bayar.php" class="btn-cek">CEK PEMBAYARAN</a>
                </td>
            </form>
            
        </div>

    </body>
</html>