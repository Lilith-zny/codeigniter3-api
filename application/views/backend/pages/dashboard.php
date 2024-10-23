<h1>Users table</h1>

<?php

    // print_r($user_data);
?>

<table class="table">
    <thead>
        <tr>
            <th>ID</th>
            <th>Username</th>
            <th>Email</th>
            <th>password</th>
            <th>Role</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach($user_data as $row){
            echo "<tr>";
            echo "<td>". $row->id ."</td>";
            echo "<td>". $row->username ."</td>";
            echo "<td>". $row->email ."</td>";
            echo "<td>". $row->password ."</td>";
            echo "<td>". $row->role ."</td>";
            echo "</tr>";

        }
        ?>
        
    </tbody>
</table>


<a href="<?php echo base_url();?>backend/logout">Logout</a>