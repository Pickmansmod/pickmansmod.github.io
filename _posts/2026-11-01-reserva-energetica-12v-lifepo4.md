---
layout: post
title: "Batería de respaldo 12V LiFePO4: notas para emergencias y campo"
date: 2026-11-01 18:30:00 -0600
category: Energia
tags: [solar, lifepo4, 12v, baterias, off-grid]
summary: "Diagrama, lista de componentes y consideraciones de seguridad para armar un banco de respaldo a 12V capaz de alimentar luces LED, radio y cargadores USB durante apagones."
---

En situaciones de corte prolongado del suministro eléctrico, disponer de una fuente confiable en corriente directa (DC) marca una diferencia sustancial. Evitar el uso de inversores pesados de 12V a 120V/220V reduce drásticamente las pérdidas por conversión (que suelen rondar entre el 15% y el 25%).

Mantener todo a **12V nativo** permite alimentar directamente luces LED, radios de comunicaciones y cargadores rápidos USB-C mediante convertidores reductores (*buck converters*).

### ¿Por qué química LiFePO4?

A diferencia de las celdas estándar de Ion de Litio (NMC), las de **Fosfato de Hierro y Litio (LiFePO4)** ofrecen ventajas críticas para resiliencia:

- **Estabilidad térmica extrema:** Muy resistentes a la fuga térmica (*thermal runaway*); no se incendian fácilmente si se perforan o sobrecargan.
- **Vida útil prolongada:** Superan típicamente los 2,000 a 4,000 ciclos antes de degradarse al 80%.
- **Curva de descarga plana:** Mantienen una tensión nominal constante de ~12.8V (3.2V por celda en configuración 4S) durante casi todo el ciclo.

### Lista de materiales básicos (BOM)

| Componente | Especificación sugerida | Función |
| :--- | :--- | :--- |
| **Batería** | Pack 4S LiFePO4 12.8V (12Ah a 20Ah) con BMS | Almacenamiento seguro |
| **Panel Solar** | Monocristalino 30W - 50W | Generación diurna |
| **Regulador** | Controlador MPPT o PWM con soporte LiFePO4 | Gestión de carga |
| **Convertidor DC** | Módulo Step-Down 12V a USB-C PD (45W/65W) | Carga de laptops y teléfonos |
| **Fusibles** | Fusible automotriz aéreo (10A o 15A) | Protección contra cortocircuito |

### Esquema conceptual del flujo

```
[ Panel Solar ] ───> [ Regulador Solar ] ───> [ Fusible 10A ] ───> [ Batería LiFePO4 12V ]
                               │                                           │
                               └─────────────────────────┬─────────────────┘
                                                         │
                                               [ Bus DC 12V Principal ]
                                                ├──> Módulo USB-C PD
                                                ├──> Tiras LED 12V (iluminación nocturna)
                                                └──> Radio de comunicaciones
```

### Notas de campo y precauciones

1. **Fusible siempre pegado al borne positivo de la batería:** Ante cualquier roce de cables o falla mecánica, el fusible debe cortar la corriente antes de que los cables se sobrecalienten.
2. **Medición regular:** Un voltímetro digital integrado en la caja del proyecto ayuda a verificar el estado de reposo (~13.3V al 90-100%, ~13.0V al 50%, y cortar consumo si baja de 12.0V).
