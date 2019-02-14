<?php 

 class Reserva {

	private $horaInicio = '08:00:00';
	private $horaActual = '08:00:00';
	private $horaFin = '19:00:00';
    private $periodo = 30;


	public function pintarReserva($reserva){
        $linea = '';
        $horaReserva = strtotime($reserva['hora']);
        $this->horaActual = strtotime($this->horaActual);
		while($horaReserva > $this->horaActual){
            $linea = $linea.'<tr><td>'.date('H:i:s',$this->horaActual).'</td><td colspan="6"></td></tr>';
            $this->horaActual = $this->sumarMinutos($this->horaActual);
        }
        $linea = $linea.'<tr><td>'.$reserva['hora'].'</td><td>'.$reserva['fecha'].'</td><td>'.$reserva['barbero'].'</td><td>'.$reserva['nombre'].$reserva['apellido'].'</td><td>'.$reserva['estado'].'</td><td>'.$reserva['reserva'].'</td></tr>';
        return $linea;
	}
	
	public function pintarReservas($reservas){
        $html = '';
		foreach($reservas as $reserva){
            $html = $html.$this->pintarReserva($reserva);
		}
		return $html;
	}

    public function sumarMinutos($hora){
        $hora = date('H:i:s', strtotime('+'.$this->periodo.' minute', $hora));
        return strtotime($hora);
	}

}


 ?>
